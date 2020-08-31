%laptops

%Processor_Size

processor(a,32).
processor(b,64).

%RAM

ram(a,4).
ram(b,4).
ram(b,8).
ram(b,16).
ram(b,32).

%Usage

usage(b,office).
usage(a,home).
usage(b,gaming).
usage(b,business).

%Types

os(a,windows).
os(a,linux).
os(b,windows).
os(b,linux).
os(b,mac).

%Processor_types

processor_types(a,intel1).
processor_types(b,intel3).
processor_types(b,intel9).

%reference

all_laptop(home,X) :- ram(a,X) ; processor(a,X) ; usage(a,X) ; os(a,X) ; processor_types(a,X).

all_laptop(X) :- ram(b,X) ; processor(b,X) ; usage(b,X) ; os(b,X) ; processor_types(b,X).
