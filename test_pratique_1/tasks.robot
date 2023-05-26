* Settings *
Documentation   Test sur les librairy et Liste

Library    Collections

* Variables *
&{dictionnaireRapport}         
@{listeRapport}              


@{Personnes}               
@{Couleurs}               
               

* Keywords *


* Test Cases *
Test dictionnaire 
    Append To List    ${Personnes}     Anicet     Alexandre    Ange
    Append To List    ${Couleurs}      Bleu       Noir         Jaune        Vert


    Set To Dictionary    ${dictionnaireRapport}    personnes    ${Personnes}    couleurs     ${Couleurs}

    FOR    ${key}    IN    @{dictionnaireRapport}
        IF    '${key}' == 'personnes'
                    Log To Console   ${dictionnaireRapport}[${key}][0]
        END
        # string=cat, number=1, list=['one', 'two', 'three']
    END
    # Log To Console    ${dictionnaireRapport}

    # FOR    ${element}    IN    @{Personnes}
    #     Log To Console   ${element}
    # END


Test dictonnaire avncée 
    @{List1}    Create List    Anicet    Alexandre  
    @{List2}    Create List    Ange     Mel
    @{List3}    Create List    Bamba     Edwige

    &{listeRapport_2}    Create Dictionary    23/03/2022    ${List1}   24/01/2022    ${List2}     23/03/2022    ${List3} 

    FOR    ${key}    IN    @{listeRapport_2}
        Log To Console   ${listeRapport_2}[${key}][0]
        # string=cat, number=1, list=['one', 'two', 'three']
    END