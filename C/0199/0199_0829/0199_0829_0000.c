#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed int, signed short);
extern signed int (*v2) (signed int, signed short);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern signed char v5 (signed int, signed char);
extern signed char (*v6) (signed int, signed char);
extern unsigned short v7 (unsigned char, signed int);
extern unsigned short (*v8) (unsigned char, signed int);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed char v13 (unsigned char, unsigned int, signed char, signed short);
extern signed char (*v14) (unsigned char, unsigned int, signed char, signed short);
extern signed short v15 (unsigned char, signed short, signed short, unsigned short);
extern signed short (*v16) (unsigned char, signed short, signed short, unsigned short);
unsigned short v17 (signed char);
unsigned short (*v18) (signed char) = v17;
unsigned short v19 (signed int, signed int, signed int);
unsigned short (*v20) (signed int, signed int, signed int) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern signed int v25 (signed int, unsigned short, unsigned int, unsigned int);
extern signed int (*v26) (signed int, unsigned short, unsigned int, unsigned int);
extern void v27 (unsigned int);
extern void (*v28) (unsigned int);
extern unsigned char v29 (signed short, signed int, unsigned int);
extern unsigned char (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
unsigned int v32 = 1U;
signed char v31 = 2;

unsigned short v19 (signed int v34, signed int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 2;
signed short v38 = 0;
signed short v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 1;
signed int v42 = 1;
unsigned int v41 = 2U;
trace++;
switch (trace)
{
case 2: 
{
signed short v44;
signed int v45;
unsigned int v46;
unsigned char v47;
v44 = -4 + 1;
v45 = v42 + v42;
v46 = 3U + 7U;
v47 = v29 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 14: 
return 6;
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
signed int v50;
signed short v51;
signed int v52;
v50 = -3 - v33;
v51 = -3 + -3;
v52 = v1 (v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
