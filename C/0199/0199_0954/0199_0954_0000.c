#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, signed short);
extern signed int (*v2) (unsigned char, signed short);
extern unsigned int v3 (signed int, unsigned short, signed char, unsigned char);
extern unsigned int (*v4) (signed int, unsigned short, signed char, unsigned char);
extern void v5 (signed short, signed short, unsigned char);
extern void (*v6) (signed short, signed short, unsigned char);
unsigned int v7 (unsigned short, signed char);
unsigned int (*v8) (unsigned short, signed char) = v7;
extern signed int v9 (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed int (*v10) (unsigned int, unsigned char, unsigned char, unsigned short);
extern unsigned short v11 (unsigned char, unsigned char, signed int);
extern unsigned short (*v12) (unsigned char, unsigned char, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (signed char, signed int, unsigned int, unsigned short);
extern unsigned short (*v16) (signed char, signed int, unsigned int, unsigned short);
extern signed char v17 (unsigned int, unsigned char, unsigned short, signed short);
extern signed char (*v18) (unsigned int, unsigned char, unsigned short, signed short);
extern unsigned char v19 (signed int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
signed short v27 (unsigned short, unsigned char);
signed short (*v28) (unsigned short, unsigned char) = v27;
extern unsigned short v29 (signed char, unsigned int);
extern unsigned short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed char v32 = 2;
unsigned short v31 = 5;

signed short v27 (unsigned short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 6U;
unsigned short v37 = 4;
unsigned char v36 = 7;
trace++;
switch (trace)
{
case 3: 
return 3;
case 9: 
return -2;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v39, signed char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = -3;
unsigned char v42 = 0;
unsigned int v41 = 6U;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v44;
unsigned char v45;
unsigned char v46;
unsigned short v47;
signed int v48;
v44 = 4U - 3U;
v45 = 4 + v42;
v46 = 2 - v42;
v47 = 5 - 3;
v48 = v9 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 14: 
return 2U;
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
unsigned char v51;
signed short v52;
signed int v53;
v51 = 1 + 2;
v52 = -3 + -4;
v53 = v1 (v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
