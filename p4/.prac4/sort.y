%{
#include <stdio.h>
#include <string.h>
#include "LinkedList.h"

typedef struct{
    int num;
} numEntry;

extern void yyerror(const char *str);
extern int yywrap();
extern int main();
extern int yyparse(void);
extern int yylex(void);
extern void printList(LListNode* node);
extern void swap(LListNode *a, LListNode *b);

LinkedList * list;

void yyerror(const char *str)
{
    fprintf(stderr, "error: %s\n", str);
}

int yywrap()
{
    return 1;
}

int main()
{
    list = NULL;
    list = createLinkedList();

    yyparse();
    freeList(&list);
}

void printList(LListNode* node)
{
    numEntry *curr;
    curr = node->data;
    
    if(curr == list->head->data)
    {
        printf("[%d", curr->num);
    }
    else
    {
        printf(", %d", curr->num);
    }
    
    if(curr == list->tail->data)
    {
        printf("]");
    }
}

void bubbleSort(LinkedList* list)
{
    int swapped, i;
    LListNode *tmp;
    LListNode *lptr = NULL;
    numEntry *currE, *nextE;

    if(list->head == NULL)
    {
    }
    else
    {
        do
        {
            swapped = 0;
            tmp = list->head;
            
            while(tmp->next != lptr)
            {
                currE = tmp->data;
                nextE = tmp->next->data;
                if(currE->num > nextE->num)
                {
                    swap(tmp, tmp->next);
                    swapped = 1;
                }
                tmp = tmp->next;
            }
            lptr = tmp;
        }
        while(swapped);
    }
}

void swap(LListNode *a, LListNode *b)
{
    LListNode *temp = a->data;
    a->data = b->data;
    b->data = temp;
}

%}

%token NUMBER COMMA OBRACE CBRACE

%%
commands:
    | commands command
    ;

command:   
    number
    ;

number:
    NUMBER 
    {
        numEntry *numEnt, *head;
        numEnt = (numEntry*)malloc(sizeof(numEntry));
        numEnt->num = $1;
    
        insertStart(list, numEnt);
        bubbleSort(list);        

        printLinkedList(list, &printList);
        printf("\n");
    }
%%
