<template>
    <div>
        <button class="btn btn-secandary" v-on:click="create">Create</button>
        <p>{{message}}</p>

        <button class="btn btn-primary" v-on:click="call">Call</button>
        <p>{{message}}</p>
        <p>{{transactionHash}}</p>
    </div>

</template>

<script>
    import { address, abi } from '../contract_info'
    import Web3 from 'web3'

    //constract Web3 (connect to Ropsten testnetwork)
    const web3 = new Web3(Web3.givenProvider);
    //connect Contract
    const contract = new web3.eth.Contract(abi, address);

    window.ethereum.enable();

    const event = contract.events.completeMined();

    export default {
        name: "contract",
        mounted:function(){
            web3.eth.getAccounts((e,r) =>{
                console.log(r[0]);
                this.address = r[0]
            })
        },
        data:function () {
            return{
                message: "hi",
                address:"",
                transactionHash:""
            }
        },
        methods:{
            create:function(){
                const document ="Design your life.";
                console.log(contract);
                contract.methods.CreateDocumentsHistory(document).send({from: this.address}, (e,r)=>{
                    console.log(this.address);
                    console.log(r);
                    this.transactionHash = r
                });
            },
            call:function () {
                contract.methods.DocumentHistories(5).call((error, result)=>{
                    console.log(result[1]);
                    this.message = result[1]
                })
            }
        }
    }
</script>

<style scoped>

</style>