<script>
    import Web3 from "web3";
    if (typeof web3 !== 'undefined') {
        let web3 = new Web3(Web3.givenProvider);
        let password_sign = "Hello, World";
        web3.eth.getAccounts().then((account)=>{
            this.my_account =account
        });
        web3.eth.personal.sign(
            password_sign,
            this.my_account,
            "test password"
        );
    }else{
        alert('MetaMaskをインストールして下さい');
    }
</script>