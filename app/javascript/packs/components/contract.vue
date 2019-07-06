<template>
    <div>
        <button class="btn btn-secandary" v-on:click="create">Create</button>
        <p>{{message}}</p>

        <button class="btn btn-primary" v-on:click="call">Call</button>
        <p>{{message}}</p>
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


    export default {
        name: "contract",
        data:function () {
            return{
                message: "hi",
                address:""
            }
        },
        methods:{
            create:function(){
                web3.eth.getAccounts((e,r) =>{
                    console.log(r);
                    console.log(r[0])
                    this.address = r[0]
                });
                const document ="Design your life.";
                contract.methods.CreateDocumentsHistory(document).send({from: this.address}, (e,r)=>{
                    console.log(r)
                });
                // contract.methods.CreateDocumentsHistory(document).send({from: account}).then((receipt) =>{
                //     this.message = receipt;
                //     console.log("Send!")
                // });
            },
            call:function () {
                contract.methods.DocumentHistories(5).call((error, result)=>{
                    console.log(result[1])
                    this.message = result[1]
                })
            }
        }
    }
</script>

<style scoped>

</style>