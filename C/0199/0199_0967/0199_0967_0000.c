#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, signed short);
extern signed int (*v2) (unsigned int, signed short);
extern void v3 (signed short);
extern void (*v4) (signed short);
signed char v5 (unsigned int, unsigned short);
signed char (*v6) (unsigned int, unsigned short) = v5;
signed int v7 (void);
signed int (*v8) (void) = v7;
extern unsigned int v9 (signed int, signed int, unsigned int);
extern unsigned int (*v10) (signed int, signed int, unsigned int);
extern unsigned int v11 (signed char, signed short, signed char);
extern unsigned int (*v12) (signed char, signed short, signed char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (signed char, signed int, unsigned char, unsigned char);
extern unsigned int (*v20) (signed char, signed int, unsigned char, unsigned char);
extern unsigned int v21 (signed short, unsigned char, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, unsigned int);
extern unsigned short v23 (signed short, signed int, unsigned char);
extern unsigned short (*v24) (signed short, signed int, unsigned char);
unsigned char v25 (signed short, unsigned char);
unsigned char (*v26) (signed short, unsigned char) = v25;
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned int v29 (signed short, signed short);
extern unsigned int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned int v32 = 5U;
unsigned short v31 = 6;

unsigned char v25 (signed short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 3;
signed char v37 = -2;
signed char v36 = 2;
trace++;
switch (trace)
{
case 7: 
{
signed short v39;
signed short v40;
unsigned int v41;
v39 = v34 + v34;
v40 = 3 - 2;
v41 = v29 (v39, v40);
history[history_index++] = (int)v41;
}
break;
case 9: 
{
signed short v42;
signed short v43;
unsigned int v44;
v42 = 3 - 0;
v43 = 0 - 2;
v44 = v29 (v42, v43);
history[history_index++] = (int)v44;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed char v47 = 1;
unsigned char v46 = 3;
unsigned int v45 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v48, unsigned short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 1;
unsigned char v51 = 3;
unsigned short v50 = 7;
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
unsigned int v55;
signed short v56;
signed int v57;
v55 = v32 + 1U;
v56 = -1 - 0;
v57 = v1 (v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
