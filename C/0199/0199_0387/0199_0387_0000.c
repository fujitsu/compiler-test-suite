#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short, signed short, unsigned char, unsigned short);
extern unsigned int (*v2) (signed short, signed short, unsigned char, unsigned short);
extern unsigned short v3 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned int, signed char, unsigned short, unsigned short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern signed char v7 (signed char, unsigned char, signed short);
extern signed char (*v8) (signed char, unsigned char, signed short);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern signed char v11 (unsigned short, signed short, signed int, signed short);
extern signed char (*v12) (unsigned short, signed short, signed int, signed short);
extern signed char v13 (unsigned int, signed short);
extern signed char (*v14) (unsigned int, signed short);
extern void v15 (unsigned char, unsigned int);
extern void (*v16) (unsigned char, unsigned int);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (unsigned char, unsigned int);
extern signed char (*v22) (unsigned char, unsigned int);
unsigned char v23 (unsigned short, signed short);
unsigned char (*v24) (unsigned short, signed short) = v23;
extern unsigned int v25 (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v26) (signed int, unsigned int, unsigned int, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (signed int, unsigned int);
extern signed int (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
signed char v32 = 2;
unsigned short v31 = 4;

unsigned char v23 (unsigned short v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 4;
unsigned short v37 = 3;
signed int v36 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed int v39;
unsigned int v40;
unsigned int v41;
unsigned int v42;
unsigned int v43;
v39 = v36 - 0;
v40 = 3U + 5U;
v41 = 7U - 7U;
v42 = 5U + 4U;
v43 = v25 (v39, v40, v41, v42);
history[history_index++] = (int)v43;
}
break;
case 5: 
{
signed int v44;
unsigned int v45;
unsigned int v46;
unsigned int v47;
unsigned int v48;
v44 = 2 - v36;
v45 = 1U - 5U;
v46 = 3U + 4U;
v47 = 2U + 1U;
v48 = v25 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 11: 
return 2;
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
signed short v51;
signed short v52;
unsigned char v53;
unsigned short v54;
unsigned int v55;
v51 = 3 + -3;
v52 = 2 + -2;
v53 = 4 + 4;
v54 = v31 + v31;
v55 = v1 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
