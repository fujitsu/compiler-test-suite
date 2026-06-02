#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned int v3 (signed short, unsigned short);
extern unsigned int (*v4) (signed short, unsigned short);
signed short v5 (signed short, signed short, signed int, unsigned short);
signed short (*v6) (signed short, signed short, signed int, unsigned short) = v5;
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed short v9 (signed int, signed short, signed short);
extern signed short (*v10) (signed int, signed short, signed short);
extern signed short v11 (signed short, signed short);
extern signed short (*v12) (signed short, signed short);
unsigned short v13 (unsigned int, signed short);
unsigned short (*v14) (unsigned int, signed short) = v13;
signed short v15 (unsigned char, signed int, unsigned short);
signed short (*v16) (unsigned char, signed int, unsigned short) = v15;
extern void v17 (unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int);
extern signed char v19 (signed int, signed int, unsigned int);
extern signed char (*v20) (signed int, signed int, unsigned int);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned int v27 (signed short, signed int, signed short, signed short);
extern unsigned int (*v28) (signed short, signed int, signed short, signed short);
extern unsigned int v29 (signed char, unsigned char, unsigned short);
extern unsigned int (*v30) (signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed int v32 = 3;
unsigned char v31 = 1;

signed short v15 (unsigned char v34, signed int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -2;
signed int v38 = -4;
unsigned int v37 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v40, signed short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 1;
signed int v43 = 2;
signed char v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
unsigned char v47 = 2;
unsigned short v46 = 4;
signed short v45 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed int v48;
unsigned int v49;
v48 = 2 - 0;
v49 = v21 (v48);
history[history_index++] = (int)v49;
}
break;
case 3: 
{
unsigned int v50;
unsigned int v51;
v50 = 1U + 5U;
v51 = 0U - 1U;
v17 (v50, v51);
}
break;
case 9: 
{
unsigned int v52;
unsigned int v53;
v52 = 0U - 4U;
v53 = 0U + 3U;
v17 (v52, v53);
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

signed short v5 (signed short v54, signed short v55, signed int v56, unsigned short v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed int v60 = -1;
signed short v59 = 1;
signed short v58 = 0;
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
unsigned char v63;
v63 = v1 ();
history[history_index++] = (int)v63;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
