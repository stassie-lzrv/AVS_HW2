#include <stdio.h>
#include <stdlib.h>

char *get_string(int *len, int *test) {
    *len = 0; 
    *test = 0;
    int cp = 1; 
    char *s = (char*) malloc(sizeof(char)); 
    char c = getchar();
    if(c > 127){
      (*test)++;
    }  
    while (c != '\n') {
        s[(*len)++] = c; 
        if (*len >= cp) {
            cp *= 2; 
            s = (char*) realloc(s, cp * sizeof(char)); 
        }

        c = getchar();
	if(c > 127){
          (*test)++;
        }          
    }
    s[*len] = '\0'; 
    return s; 
}

int main() {
    int len, test; 
    char *s = get_string(&len, &test);
    if(test == 0){
      for(int i = 0; i < len;i++){
        if((s[i] == (66) || s[i] == (67) || s[i] == (68) || s[i] == (70) || s[i] == (71) || s[i] == (72) || s[i] == (74) || s[i] == (75) || s[i] == (76) || s[i] == (77) || s[i] == (78) || s[i] == (80) || s[i] == (82) || s[i] == (83) || s[i] == (84) || s[i] == (86) || s[i] == (87) || s[i] == (88) || s[i] == (90)) || (s[i] == (66+32) || s[i] == (67+32) || s[i] == (68+32) || s[i] == (70+32) || s[i] == (71+32) || s[i] == (72+32) || s[i] == (74+32) || s[i] == (75+32) || s[i] == (76+32) || s[i] == (77+32) || s[i] == (78+32) || s[i] == (80+32) || s[i] == (82+32) || s[i] == (83+32) || s[i] == (84+32) || s[i] == (86+32) || s[i] == (87+32) || s[i] == (88+32) || s[i] == (90+32))){ 
	  printf("%d", s[i]);
        }
	else{
          printf("%c", s[i]);
        }
      }
      return 0; 
    }
    else{
      printf("incorrect input");
      return 0;
    }
    free(s); 
    return 0;
}