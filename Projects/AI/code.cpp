#include <bits/stdc++.h>
#include <string.h>
using namespace std;
struct faculty{
    int total,pref[3];
    char name[20],cour[3][10];
};
struct section{
    int sem;
    char section[10],sub[10][10];
};
const int le=86,se=35,su=5;
struct faculty f[le];
struct section p[se];
void findfaculty(string a[], int i, int y, int *x){
	for(int k=0;k<3 && (*x)<su;k++){
		for(int j=0;j<le && (*x)==y;j++){	
		    if(strcmp(f[j].cour[k],p[i].sub[y])==0 && f[j].total<3 && 
		    !(f[j].pref[(i+1)%3]==1 && f[j].pref[(i+2)%3]==1 && (*x)<su)){
			    a[(*x)++]=f[j].name;
			    f[j].total++;
			    f[j].pref[k]=1;
			    break;
		    }
		}
		if((*x)==y)
		(*x)++;
	}
}
int main(){
    FILE *fptr=fopen("faculty.txt","r");
    FILE *ptr=fopen("sections.txt","r");
    FILE *pt=fopen("output.txt","w");
    for(int i=0;i<le;i++){
        fscanf(fptr,"%s\t\t%s\t%s\t%s\n",f[i].name,f[i].cour[0],f[i].cour[1],f[i].cour[2]);
        f[i].total=0;
        f[i].pref[0]=0;
        f[i].pref[1]=0;
        f[i].pref[2]=0;
    }
    for(int i=0;i<se;i++)
	fscanf(ptr,"%d\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n",&p[i].sem,p[i].section,p[i].sub[0],p[i].sub[1],
	p[i].sub[2],p[i].sub[3],p[i].sub[4],p[i].sub[5],p[i].sub[6],p[i].sub[7],p[i].sub[8],p[i].sub[9]);
    for(int i=0;i<se;i++){
    	string a[su];
    	int x=0;
    	fprintf(pt,"\n\n");
    	fprintf(pt,"%d %s\n",p[i].sem,p[i].section);
		for(int y=0;y<su;y++)
		findfaculty(a,i,y,&x);
		
		for(int j=0;j<su;j++)
		{   
		    //fprintf(pt,"%s\n",p[i].section);
			fprintf(pt,"%s\t - ",p[i].sub[j]/*c_str()*/);
			
			fputs(a[j].c_str(),pt);
			fprintf(pt,"\t");
		}
		 
		 
		
	 
	//	cout<<endl<<endl;
	}
	fclose(pt);
    fclose(fptr);
    fclose(ptr);
    return 0;
}