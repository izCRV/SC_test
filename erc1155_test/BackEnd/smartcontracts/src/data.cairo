%lang starknet

from starkware.cairo.common.registers import get_label_location
from starkware.cairo.common.alloc import alloc

struct CredQuest {
    title: felt,
    Issued_by: felt,
    Skills: felt,
    date_of_issue: felt,
    id: felt,
}

struct Quest {
    
}

func lookup_CredQuest(index: felt) -> CredQuest* {
    let (addr) = get_label_location(data_start);
    return cast(addr + ((index - 1) * 5), CredQuest*);

    data_start:
    dw 'Dev Web3';
    dw 'Starknet';
    dw 'Cairo smartscontracts';
    dw '02/2023';
    dw '1';

    dw 'BA'
    dw 'The university of Chicago'
    dw 'BA with major in Economic and minor in computer science'
    dw '01/2006'
    dw '2'     

    // above just an example, 
    // you can create a large number of them manually
    // it is important to specify an id for them
}