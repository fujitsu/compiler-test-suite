#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned short, unsigned int);
extern unsigned int (*v2) (unsigned int, unsigned short, unsigned int);
extern unsigned char v3 (signed int, unsigned char, signed short);
extern unsigned char (*v4) (signed int, unsigned char, signed short);
extern void v5 (signed char, signed int, unsigned int, signed int);
extern void (*v6) (signed char, signed int, unsigned int, signed int);
extern signed short v7 (signed int, unsigned char, signed char);
extern signed short (*v8) (signed int, unsigned char, signed char);
signed short v9 (signed short);
signed short (*v10) (signed short) = v9;
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern signed char v13 (signed short, signed short, unsigned short);
extern signed char (*v14) (signed short, signed short, unsigned short);
extern void v15 (signed int, signed char, signed short, unsigned int);
extern void (*v16) (signed int, signed char, signed short, unsigned int);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned int v19 (signed char, signed int, unsigned int);
extern unsigned int (*v20) (signed char, signed int, unsigned int);
extern void v21 (unsigned int, unsigned short);
extern void (*v22) (unsigned int, unsigned short);
extern signed int v23 (signed char, signed short, signed char);
extern signed int (*v24) (signed char, signed short, signed char);
signed short v25 (signed char, signed char, unsigned short);
signed short (*v26) (signed char, signed char, unsigned short) = v25;
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern signed char v29 (signed short, unsigned char, signed int, signed int);
extern signed char (*v30) (signed short, unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed char v32 = 3;
signed short v31 = -4;

signed short v25 (signed char v34, signed char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 4;
signed short v38 = 1;
unsigned char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned int v42 = 7U;
unsigned int v41 = 6U;
unsigned int v40 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed short v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 4;
unsigned short v45 = 4;
unsigned char v44 = 1;
trace++;
switch (trace)
{
case 9: 
{
signed short v47;
signed short v48;
unsigned short v49;
signed char v50;
v47 = v43 + v43;
v48 = v43 - 2;
v49 = v45 + v46;
v50 = v13 (v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 11: 
return v43;
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
unsigned int v53;
unsigned short v54;
unsigned int v55;
unsigned int v56;
v53 = 5U - 7U;
v54 = 4 + 4;
v55 = 1U + 6U;
v56 = v1 (v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
