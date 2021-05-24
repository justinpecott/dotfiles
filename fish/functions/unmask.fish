function unmask
    switch $argv[1]
        case na NA
            set res (echo sudo -u deeadmin /apollo/env/IotaOpsTools/bin/SensitiveDataUnMasker -e \'$argv[2]\' | ssh phx-op2l-na-p-1a-65e9267d.us-east-1.amazon.com < /dev/fd/0) 
            echo
            echo $res[-1] | jq .
            if test $status -ne 0
                # jq parsing failed so lets dump the raw output
                echo $res[-1]
            end
        case eu EU
            set res (echo sudo -u smrthome /apollo/env/IotaOpsTools/bin/SensitiveDataUnMasker -e \'$argv[2]\' | ssh opstools-eu-p-1a-46c87ce4.eu-west-1.amazon.com < /dev/fd/0) 
            echo
            echo $res[-1] | jq .
            if test $status -ne 0
                # jq parsing failed so lets dump the raw output
                echo $res[-1]
            end
        case fe FE
            set res (echo sudo -u smrthome /apollo/env/IotaOpsTools/bin/SensitiveDataUnMasker -e \'$argv[2]\' | ssh opstools-fe-p-2a-771abd48.us-west-2.amazon.com < /dev/fd/0) 
            echo
            echo $res[-1] | jq .
            if test $status -ne 0
                # jq parsing failed so lets dump the raw output
                echo $res[-1]
            end
        case '*'
            echo 'usage: unmask na|eu|fe string-to-unmask'
    end
end