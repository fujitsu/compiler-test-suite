#include <stdio.h>
#include <stdlib.h>
static void v1 (void);
static void (*v2) (void) = v1;
signed int v3 (signed int);
signed int (*v4) (signed int) = v3;
extern signed short v5 (unsigned int, unsigned int);
extern signed short (*v6) (unsigned int, unsigned int);
extern void v7 (unsigned char, signed int, unsigned short);
extern void (*v8) (unsigned char, signed int, unsigned short);
extern unsigned short v9 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned short, signed int, unsigned char);
extern void v11 (signed char, unsigned char);
extern void (*v12) (signed char, unsigned char);
extern void v13 (unsigned short, unsigned short, unsigned char);
extern void (*v14) (unsigned short, unsigned short, unsigned char);
extern unsigned short v15 (signed char, signed char, signed short, unsigned char);
extern unsigned short (*v16) (signed char, signed char, signed short, unsigned char);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
signed char v23 (signed int, signed int, unsigned char);
signed char (*v24) (signed int, signed int, unsigned char) = v23;
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern unsigned short v27 (unsigned char, signed char, signed char);
extern unsigned short (*v28) (unsigned char, signed char, signed char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned char v32 = 2;
unsigned int v31 = 2U;

signed char v23 (signed int v34, signed int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 7U;
signed short v38 = -3;
signed int v37 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
unsigned short v42 = 7;
signed int v41 = 1;
signed int v40 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 1;
unsigned short v45 = 4;
signed int v44 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (void)
{
{
for (;;) {
unsigned int v49 = 6U;
signed short v48 = 0;
unsigned char v47 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v50;
signed char v51;
signed short v52;
unsigned char v53;
unsigned short v54;
v50 = -4 + -2;
v51 = 3 - 0;
v52 = v48 - v48;
v53 = 2 - 2;
v54 = v15 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 8: 
return;
case 9: 
{
unsigned int v55;
unsigned int v56;
signed short v57;
v55 = v49 + v49;
v56 = 3U + v49;
v57 = v5 (v55, v56);
history[history_index++] = (int)v57;
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
v1 ();
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
