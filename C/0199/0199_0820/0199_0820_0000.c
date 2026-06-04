#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, signed char, unsigned char);
extern void (*v2) (signed short, signed char, unsigned char);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned int v5 (signed char, unsigned short, signed int, unsigned int);
extern unsigned int (*v6) (signed char, unsigned short, signed int, unsigned int);
unsigned int v7 (unsigned int, signed short, signed int, signed int);
unsigned int (*v8) (unsigned int, signed short, signed int, signed int) = v7;
extern void v9 (unsigned int, signed short, unsigned char);
extern void (*v10) (unsigned int, signed short, unsigned char);
extern signed char v11 (signed int, unsigned int);
extern signed char (*v12) (signed int, unsigned int);
signed int v13 (unsigned short, signed char, signed char, signed int);
signed int (*v14) (unsigned short, signed char, signed char, signed int) = v13;
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
extern unsigned short v17 (signed char, unsigned short, signed int);
extern unsigned short (*v18) (signed char, unsigned short, signed int);
extern unsigned int v19 (unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, signed short);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned short v23 (unsigned int, signed short);
extern unsigned short (*v24) (unsigned int, signed short);
signed int v25 (signed int, unsigned int);
signed int (*v26) (signed int, unsigned int) = v25;
extern unsigned char v27 (signed int);
extern unsigned char (*v28) (signed int);
extern unsigned short v29 (signed int, signed char, signed char);
extern unsigned short (*v30) (signed int, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed int v32 = -4;
unsigned int v31 = 1U;

signed int v25 (signed int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 1;
unsigned int v37 = 0U;
unsigned int v36 = 5U;
trace++;
switch (trace)
{
case 2: 
return v34;
default: abort ();
}
}
}
}

signed int v13 (unsigned short v39, signed char v40, signed char v41, signed int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 2;
signed short v44 = 1;
unsigned short v43 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v46, signed short v47, signed int v48, signed int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 3;
signed char v51 = 3;
signed char v50 = -1;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v53;
signed short v54;
unsigned short v55;
v53 = v46 + 1U;
v54 = v47 + v47;
v55 = v23 (v53, v54);
history[history_index++] = (int)v55;
}
break;
case 12: 
return v46;
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
signed short v58;
signed char v59;
unsigned char v60;
v58 = -4 - -4;
v59 = -3 - -3;
v60 = 3 + 0;
v1 (v58, v59, v60);
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
