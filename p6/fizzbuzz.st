

'Hello, world' printNl !

1 to: 100 do: [:x| 
    (x \\ 15 == 0)
        ifTrue: [ 'fizz buzz' printNl ]
        ifFalse: [ 
            (x \\ 3 == 0)
                ifTrue: [ 'fizz' printNl ]
                ifFalse: [
                    (x \\ 5 == 0)
                        ifTrue: [ 'buzz' printNl ]
                        ifFalse: [ x printNl ]
                ]
        ]
    ]
