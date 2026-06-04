#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, signed int, unsigned int);
extern signed int (*v2) (unsigned int, unsigned short, signed int, unsigned int);
extern signed int v3 (signed char, unsigned int, unsigned short);
extern signed int (*v4) (signed char, unsigned int, unsigned short);
extern unsigned char v5 (signed short, signed short, signed int, unsigned short);
extern unsigned char (*v6) (signed short, signed short, signed int, unsigned short);
extern unsigned char v7 (signed char, signed short, signed int);
extern unsigned char (*v8) (signed char, signed short, signed int);
unsigned int v9 (signed char, signed int);
unsigned int (*v10) (signed char, signed int) = v9;
extern signed short v11 (signed short, signed char, signed char, unsigned int);
extern signed short (*v12) (signed short, signed char, signed char, unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (signed int, signed short, unsigned char);
extern signed int (*v16) (signed int, signed short, unsigned char);
extern unsigned short v17 (unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned short);
extern unsigned short v19 (signed int, unsigned char);
extern unsigned short (*v20) (signed int, unsigned char);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned int v23 (unsigned int, signed char, unsigned int, signed short);
extern unsigned int (*v24) (unsigned int, signed char, unsigned int, signed short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed char v27 (signed short, signed int);
extern signed char (*v28) (signed short, signed int);
extern unsigned int v29 (unsigned int, signed char);
extern unsigned int (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned char v32 = 7;
unsigned int v31 = 0U;

unsigned short v21 (void)
{
{
for (;;) {
unsigned int v36 = 3U;
unsigned char v35 = 7;
unsigned int v34 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v37, signed int v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed short v41 = -3;
signed char v40 = -2;
unsigned char v39 = 4;
trace++;
switch (trace)
{
case 7: 
return 1U;
case 9: 
{
signed int v42;
signed short v43;
unsigned char v44;
signed int v45;
v42 = -3 + -3;
v43 = -2 + v41;
v44 = v39 - 5;
v45 = v15 (v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 11: 
return 7U;
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
unsigned int v48;
unsigned short v49;
signed int v50;
unsigned int v51;
signed int v52;
v48 = 0U - v31;
v49 = 3 - 6;
v50 = -3 - -1;
v51 = v31 - v31;
v52 = v1 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
