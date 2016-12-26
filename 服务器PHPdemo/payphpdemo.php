<?php

//公钥字符串
$public_key = "";
//公钥字符串转化资源
$pu_key = openssl_pkey_get_public($public_key);

//获取到回调数据
$encrypted =  file_get_contents("php://input"); 

//解密密码，为空（不可更改）
$decrypted = ""; 
//rsa解密  
openssl_public_decrypt(base64_decode($encrypted),$decrypted,$pu_key);//私钥加密的内容通过公钥可用解密出来  


//回调数据
echo $decrypted; 