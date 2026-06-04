#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned char);
signed short v3 (signed int, signed char, signed int);
signed short (*v4) (signed int, signed char, signed int) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (unsigned char, signed char);
extern signed int (*v8) (unsigned char, signed char);
unsigned short v9 (signed short);
unsigned short (*v10) (signed short) = v9;
extern unsigned short v11 (signed int, signed char, signed short, signed short);
extern unsigned short (*v12) (signed int, signed char, signed short, signed short);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
signed short v19 (unsigned int, signed int);
signed short (*v20) (unsigned int, signed int) = v19;
extern unsigned int v21 (signed char, signed char, signed char, signed short);
extern unsigned int (*v22) (signed char, signed char, signed char, signed short);
unsigned int v23 (unsigned short, unsigned int, signed int, unsigned short);
unsigned int (*v24) (unsigned short, unsigned int, signed int, unsigned short) = v23;
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
extern unsigned char v27 (signed char, signed char, unsigned int, signed int);
extern unsigned char (*v28) (signed char, signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
signed int v32 = -1;
unsigned char v31 = 4;

unsigned int v23 (unsigned short v34, unsigned int v35, signed int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 1;
unsigned char v39 = 5;
unsigned int v38 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned int v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -4;
signed int v44 = -3;
unsigned int v43 = 4U;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v46;
v46 = v5 ();
history[history_index++] = (int)v46;
}
break;
case 8: 
{
unsigned short v47;
v47 = v5 ();
history[history_index++] = (int)v47;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
signed int v50 = 3;
signed char v49 = 2;
unsigned char v48 = 7;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
signed short v53 = -4;
unsigned int v52 = 4U;
signed short v51 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed short v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 4U;
signed int v56 = -3;
signed char v55 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed int v58, signed char v59, signed int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = -1;
signed short v62 = 3;
signed int v61 = 2;
trace++;
switch (trace)
{
case 1: 
return v63;
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
unsigned short v66;
unsigned char v67;
unsigned char v68;
v66 = 2 + 1;
v67 = 2 - 7;
v68 = v1 (v66, v67);
history[history_index++] = (int)v68;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
