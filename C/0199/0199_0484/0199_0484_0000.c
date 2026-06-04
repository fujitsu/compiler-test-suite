#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned int, unsigned int, unsigned char, unsigned short);
extern void (*v8) (unsigned int, unsigned int, unsigned char, unsigned short);
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
extern unsigned char v11 (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned char (*v12) (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed int v15 (unsigned short, signed char, signed char, unsigned char);
extern signed int (*v16) (unsigned short, signed char, signed char, unsigned char);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern void v19 (signed short, unsigned short);
extern void (*v20) (signed short, unsigned short);
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
signed char v25 (signed short, unsigned int, unsigned int, unsigned char);
signed char (*v26) (signed short, unsigned int, unsigned int, unsigned char) = v25;
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed char v32 = -2;
signed short v31 = -3;

signed char v25 (signed short v34, unsigned int v35, unsigned int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 2;
signed int v39 = 3;
signed short v38 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed int v41;
unsigned char v42;
v41 = v39 + -1;
v42 = v29 (v41);
history[history_index++] = (int)v42;
}
break;
case 4: 
{
signed char v43;
signed short v44;
v43 = -2 - -3;
v44 = v17 (v43);
history[history_index++] = (int)v44;
}
break;
case 14: 
return 0;
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
unsigned short v47;
signed int v48;
signed int v49;
v47 = 2 + 2;
v48 = -3 + 2;
v49 = v1 (v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
