#include <stdio.h>
#include <stdlib.h>
static void v1 (signed short);
static void (*v2) (signed short) = v1;
extern void v3 (signed char, unsigned char);
extern void (*v4) (signed char, unsigned char);
extern unsigned char v5 (signed short, unsigned char, unsigned short);
extern unsigned char (*v6) (signed short, unsigned char, unsigned short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern unsigned int v17 (unsigned int, unsigned char);
extern unsigned int (*v18) (unsigned int, unsigned char);
extern signed int v19 (unsigned int, unsigned short);
extern signed int (*v20) (unsigned int, unsigned short);
extern signed int v21 (signed short, unsigned int, signed char, unsigned short);
extern signed int (*v22) (signed short, unsigned int, signed char, unsigned short);
extern unsigned char v23 (unsigned char, signed char);
extern unsigned char (*v24) (unsigned char, signed char);
signed int v25 (unsigned int, unsigned int, signed char, unsigned int);
signed int (*v26) (unsigned int, unsigned int, signed char, unsigned int) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (signed short, signed short, unsigned int);
extern unsigned char (*v30) (signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
signed int v32 = -1;
signed short v31 = 1;

signed int v25 (unsigned int v34, unsigned int v35, signed char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 2;
signed int v39 = -1;
unsigned short v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
unsigned short v43 = 7;
unsigned int v42 = 7U;
signed int v41 = -3;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v44;
signed char v45;
unsigned char v46;
v44 = 4 + 5;
v45 = 3 - -4;
v46 = v23 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed int v49 = -4;
unsigned int v48 = 1U;
unsigned short v47 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (signed short v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 7;
unsigned int v52 = 6U;
signed char v51 = -2;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
signed short v54;
unsigned char v55;
unsigned short v56;
unsigned char v57;
v54 = -2 + -4;
v55 = 7 + 0;
v56 = v53 - 7;
v57 = v5 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 3: 
{
unsigned char v58;
v58 = v13 ();
history[history_index++] = (int)v58;
}
break;
case 7: 
{
signed char v59;
unsigned char v60;
v59 = 1 - -1;
v60 = 3 - 7;
v3 (v59, v60);
}
break;
case 13: 
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
signed short v63;
v63 = v31 - v33;
v1 (v63);
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
