#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short, unsigned char, signed char);
extern signed char (*v2) (signed short, unsigned char, signed char);
extern unsigned char v3 (signed int, unsigned char);
extern unsigned char (*v4) (signed int, unsigned char);
extern unsigned char v5 (unsigned short, signed short, signed char);
extern unsigned char (*v6) (unsigned short, signed short, signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
void v11 (signed int, signed short, unsigned short);
void (*v12) (signed int, signed short, unsigned short) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed short v15 (signed char, signed short, unsigned char);
extern signed short (*v16) (signed char, signed short, unsigned char);
extern signed short v19 (unsigned short, signed char, signed char, unsigned int);
extern signed short (*v20) (unsigned short, signed char, signed char, unsigned int);
extern signed short v21 (signed char, signed int, unsigned char);
extern signed short (*v22) (signed char, signed int, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
void v25 (signed int);
void (*v26) (signed int) = v25;
extern signed short v27 (unsigned int);
extern signed short (*v28) (unsigned int);
extern signed char v29 (unsigned short, unsigned char, signed int);
extern signed char (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned char v32 = 4;
unsigned int v31 = 7U;

void v25 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -1;
signed int v36 = 1;
unsigned int v35 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed int v38, signed short v39, unsigned short v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 0U;
unsigned char v42 = 7;
unsigned short v41 = 7;
trace++;
switch (trace)
{
case 5: 
{
signed char v44;
signed short v45;
unsigned char v46;
signed short v47;
v44 = -2 - -2;
v45 = -1 - v39;
v46 = 1 + 5;
v47 = v15 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 15: 
return;
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
signed short v50;
unsigned char v51;
signed char v52;
signed char v53;
v50 = -2 + -1;
v51 = 1 - v32;
v52 = 0 + 2;
v53 = v1 (v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
