#include <stdio.h>
struct person
{
    char name[50];
    int voterid;
};
void main()
{
    int npeople,i,age,vote,A=0,B=0,C=0;
    printf(" Enter number of people voting: ");
    scanf("%d",&npeople);
    for(i=1;i<=npeople;i++)
    {
    printf("\n Person%d\n Enter your age: ",i);
    scanf("%d",&age);
    if(age<18)
    {
        printf("Not eligible to vote...\n\n");
    }
    else
    {
        printf("\n\t**WELCOME TO DIGITAL VOTING**\n");
        printf(" Rules: \n\n 1.)First enter your name and click enter;\n 2.)Enter voterid and click enter;\n");
        struct person person1;
        printf("\n Enter name and voterid: ");
        scanf("%s",&person1.name);
        scanf("%d",&person1.voterid);
        printf("\n The candidates participating are:\n\n  CANDIDATE1\n\n  CANDIDATE2\n\n  CANDIDATE3\n");
        printf("\n Enter 1 to vote candidate1;\n\n Enter 2 to vote candidate2;\n\n Enter 3 to vote candidate3;\n");
    scanf("%d",&vote);
    if(vote==1)
    A++;
   else if(vote==2)
    B++;
   else if(vote==3)
    C++;
   else
    printf("invalid choice");
            printf(" The votes gained are:\n\n%d for candidate1,\n\n%d for candidate2,\n\n%d for candidate3.\n",A,B,C);
    }
    }
}







