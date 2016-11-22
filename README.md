# ldap-get-phone-number

script helps you to find student's phone number in local ldap
    
Copy/paste to terminal

    git clone https://github.com/amkv/ldap-get-phone-number.git
    cd ldap-get-phone-number
    chmode 755 phone_number.sh
    
you can run it with/without argument

    ./phone_number.sh akalmyko
    ./phone_number.sh
    
copy ldap-get-phone-number path

    pwd
    
go to HOME directory

    cd ~/
    vim .zshenv
    alias number="_PATH_TO_ldap-get-phone-number/phone_number.sh"
    
restart terminal

    number akalmyko
