#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, signed int, unsigned short);
extern signed char (*v2) (signed char, signed int, unsigned short);
extern signed int v3 (signed char, unsigned char, unsigned int, unsigned short);
extern signed int (*v4) (signed char, unsigned char, unsigned int, unsigned short);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern unsigned int v7 (unsigned short, signed short);
extern unsigned int (*v8) (unsigned short, signed short);
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
extern unsigned short v13 (signed char, unsigned char, unsigned char);
extern unsigned short (*v14) (signed char, unsigned char, unsigned char);
void v15 (signed short);
void (*v16) (signed short) = v15;
extern signed short v17 (unsigned short, signed short);
extern signed short (*v18) (unsigned short, signed short);
extern void v19 (unsigned int);
extern void (*v20) (unsigned int);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed short v23 (unsigned char, signed int, signed int);
extern signed short (*v24) (unsigned char, signed int, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
signed short v29 (signed char, signed short);
signed short (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed short v32 = 1;
signed int v31 = 1;

signed short v29 (signed char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 1;
signed int v37 = -3;
signed short v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = 0;
signed short v41 = 0;
unsigned char v40 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned int v45 = 1U;
unsigned short v44 = 4;
unsigned char v43 = 6;
trace++;
switch (trace)
{
case 5: 
{
v25 ();
}
break;
case 7: 
{
unsigned char v46;
unsigned char v47;
v46 = 6 - 7;
v47 = v9 (v46);
history[history_index++] = (int)v47;
}
break;
case 13: 
return 3;
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
signed char v50;
signed int v51;
unsigned short v52;
signed char v53;
v50 = -2 - -2;
v51 = v33 + v31;
v52 = 3 - 5;
v53 = v1 (v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
