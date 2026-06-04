#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned char, unsigned char);
extern unsigned int v3 (signed int, unsigned int, signed short, unsigned char);
extern unsigned int (*v4) (signed int, unsigned int, signed short, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
unsigned char v9 (unsigned short, unsigned short, signed short);
unsigned char (*v10) (unsigned short, unsigned short, signed short) = v9;
signed short v11 (unsigned short);
signed short (*v12) (unsigned short) = v11;
extern unsigned char v13 (signed char, unsigned char, signed short);
extern unsigned char (*v14) (signed char, unsigned char, signed short);
extern signed short v15 (signed short, unsigned short);
extern signed short (*v16) (signed short, unsigned short);
unsigned short v17 (unsigned int, unsigned int, signed int, signed char);
unsigned short (*v18) (unsigned int, unsigned int, signed int, signed char) = v17;
extern unsigned int v19 (signed int, unsigned int, signed char);
extern unsigned int (*v20) (signed int, unsigned int, signed char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short, unsigned short, signed short, unsigned int);
extern void (*v24) (signed short, unsigned short, signed short, unsigned int);
extern unsigned short v25 (signed int, signed char, signed char);
extern unsigned short (*v26) (signed int, signed char, signed char);
extern unsigned char v27 (unsigned int, unsigned short, signed int, signed short);
extern unsigned char (*v28) (unsigned int, unsigned short, signed int, signed short);
extern signed char v29 (signed int, signed int);
extern signed char (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned char v32 = 5;
unsigned int v31 = 1U;

unsigned short v17 (unsigned int v34, unsigned int v35, signed int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -2;
signed int v39 = -3;
unsigned short v38 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -4;
unsigned int v43 = 2U;
signed char v42 = 0;
trace++;
switch (trace)
{
case 10: 
{
signed int v45;
signed int v46;
signed char v47;
v45 = -1 - 0;
v46 = 2 + -2;
v47 = v29 (v45, v46);
history[history_index++] = (int)v47;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v48, unsigned short v49, signed short v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = -1;
signed short v52 = -4;
signed char v51 = -2;
trace++;
switch (trace)
{
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
unsigned short v56;
unsigned char v57;
unsigned char v58;
unsigned char v59;
v56 = 0 + 1;
v57 = 7 + 6;
v58 = 1 - 3;
v59 = v1 (v56, v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
