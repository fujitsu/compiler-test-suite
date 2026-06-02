#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, unsigned char, unsigned short);
extern unsigned int (*v2) (signed char, signed int, unsigned char, unsigned short);
extern signed int v3 (unsigned int);
extern signed int (*v4) (unsigned int);
signed int v5 (signed int, signed short, signed short, signed short);
signed int (*v6) (signed int, signed short, signed short, signed short) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
void v9 (signed int, signed char, unsigned short);
void (*v10) (signed int, signed char, unsigned short) = v9;
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v19 (signed short, unsigned short);
extern signed short (*v20) (signed short, unsigned short);
extern signed char v21 (unsigned char, unsigned char, signed short, signed int);
extern signed char (*v22) (unsigned char, unsigned char, signed short, signed int);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed char v25 (unsigned short, unsigned int, unsigned short, unsigned int);
extern signed char (*v26) (unsigned short, unsigned int, unsigned short, unsigned int);
extern unsigned char v27 (signed short, signed char);
extern unsigned char (*v28) (signed short, signed char);
extern signed short v29 (signed char, signed short);
extern signed short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned char v32 = 6;
signed int v31 = -4;

void v9 (signed int v34, signed char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 2;
signed int v38 = 0;
unsigned short v37 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v40, signed short v41, signed short v42, signed short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 1;
signed char v45 = 0;
unsigned int v44 = 3U;
trace++;
switch (trace)
{
case 6: 
{
signed char v47;
unsigned int v48;
v47 = v45 - v45;
v48 = v23 (v47);
history[history_index++] = (int)v48;
}
break;
case 14: 
return v40;
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
signed char v51;
signed int v52;
unsigned char v53;
unsigned short v54;
unsigned int v55;
v51 = -2 + 1;
v52 = -4 + 3;
v53 = v32 + 6;
v54 = v33 - 2;
v55 = v1 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
