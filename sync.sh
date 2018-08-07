#!/usr/bin/env bash

echo 'Content-type: text/html'
echo ''
echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Clipboard Sync</title>
    <style>
    #clipText{
        display: block;
        border: none;
        resize: none;
        background: none;
        width: 100%;
        height: auto;
    }
    </style>
</head>
<body>
    <textarea id="clipText" readonly="true">'"$(xclip -o)"'</textarea>
    <br/><br/>

    <button onclick="copyToClipboard()">Copy</button>
    
    <script>
         function copyToClipboard() {
            var copyText = document.getElementById("clipText");
            copyText.select();
            console.log(copyText)
            document.execCommand("copy");
            alert("Text copied to clipboard");
        }
    </script>
</body>
</html>'