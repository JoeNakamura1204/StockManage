<template>
    <div>
        <button class="btn btn-primary" v-on:click="hello">Click Here</button>
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

    export default {
        name: "contract",
        data:function () {
            return{
                message: "hi"
            }
        },
        methods:{
            hello:function () {
                contract.methods.hello().call((error, result)=>{
                    this.message = result
                })
            }
        }
    }
</script>

<style scoped>

</style>