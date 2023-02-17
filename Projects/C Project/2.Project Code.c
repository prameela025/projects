#include <stdio.h>
struct person
{
    char name[50];
    int voterid;
};
void main()
{
    int npeople,i,age,vote,A=0,B=0,C=0;
    printf("Enter number of people voting: \n");
    scanf("%d",&npeople);
    for(i=1;i<=npeople;i++)
    {
    printf("Person%d\nEnter your age: \n",i);
    scanf("%d",&age);
    if(age<18)
    {
        printf("Not eligible to vote...\n");
    }
    else
    {
        printf("**WELCOME TO DIGITAL VOTING**\n");
        printf("Rules: \n1.)First enter your name and click enter;\n2.)Enter voterid and click enter;\n");
        struct person person1;
        printf("Enter name and voterid:\n");
        scanf("%s",&person1.name);
        scanf("%d",&person1.voterid);
        printf("The candidates participating are:\n CANDIDATE1\n CANDIDATE2\n CANDIDATE3\n");
        printf("Enter 1 to vote candidate1;\nEnter 2 to vote candidate2;\nEnter 3 to vote candidate3;\n");
    scanf("%d",&vote);
    if(vote==1)
    A++;
   else if(vote==2)
    B++;
   else if(vote==3)
    C++;
   else
    printf("invalid choice");
            printf("The votes gained are:\n%d for candidate1,\n%d for candidate2\n,%d for candidate3\n",A,B,C);
    }
    }
}







