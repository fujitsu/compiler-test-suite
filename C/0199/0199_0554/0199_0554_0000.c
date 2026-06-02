#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
extern signed char v3 (unsigned int, signed short, unsigned char, signed char);
extern signed char (*v4) (unsigned int, signed short, unsigned char, signed char);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed char v9 (unsigned short, unsigned int, signed char);
extern signed char (*v10) (unsigned short, unsigned int, signed char);
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
extern signed char v13 (unsigned short, signed char);
extern signed char (*v14) (unsigned short, signed char);
extern unsigned char v15 (signed int, unsigned short);
extern unsigned char (*v16) (signed int, unsigned short);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (signed short, signed int, signed short);
extern unsigned char (*v20) (signed short, signed int, signed short);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed short v23 (unsigned int, signed int);
extern signed short (*v24) (unsigned int, signed int);
extern unsigned int v25 (unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned int, unsigned int);
extern signed int v27 (unsigned char, unsigned char, signed short);
extern signed int (*v28) (unsigned char, unsigned char, signed short);
extern unsigned char v29 (unsigned int, signed char);
extern unsigned char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed short v32 = -1;
signed short v31 = 1;

unsigned char v7 (void)
{
{
for (;;) {
unsigned short v36 = 3;
unsigned int v35 = 0U;
signed short v34 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v37;
signed int v38;
v37 = v35 - v35;
v38 = v11 (v37);
history[history_index++] = (int)v38;
}
break;
case 7: 
{
unsigned int v39;
signed int v40;
v39 = 3U - v35;
v40 = v11 (v39);
history[history_index++] = (int)v40;
}
break;
case 9: 
return 7;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v43;
signed char v44;
signed int v45;
v43 = 4U - 5U;
v44 = -1 - 2;
v45 = v1 (v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
