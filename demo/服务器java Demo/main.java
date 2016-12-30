//¶ÁÈ¡¹«Ô¿
PublicKey publicKey = RSA2Utils.getPublicKey("src/main/resources/LETANG_rsa_public_key.pem");

String strRequest = getRequestPostStr(request);
sun.misc.BASE64Decoder decoder = new sun.misc.BASE64Decoder();
byte[] data = decoder.decodeBuffer(strRequest);
    		
result = RSA2Utils.RSADecode(publicKey, data);