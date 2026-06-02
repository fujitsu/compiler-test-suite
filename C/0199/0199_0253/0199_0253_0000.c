#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned int, signed int, unsigned int, unsigned char);
static void (*v2) (unsigned int, signed int, unsigned int, unsigned char) = v1;
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern signed int v7 (unsigned int, signed int, unsigned int, signed char);
extern signed int (*v8) (unsigned int, signed int, unsigned int, signed char);
extern unsigned int v9 (signed int, unsigned int, signed int);
extern unsigned int (*v10) (signed int, unsigned int, signed int);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern unsigned int v13 (unsigned short, unsigned char, signed int, unsigned char);
extern unsigned int (*v14) (unsigned short, unsigned char, signed int, unsigned char);
signed short v15 (signed int, unsigned int, signed char, unsigned int);
signed short (*v16) (signed int, unsigned int, signed char, unsigned int) = v15;
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern unsigned int v19 (signed short, unsigned short, signed short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed short, signed int);
extern unsigned short v21 (signed char, signed char, unsigned char, signed int);
extern unsigned short (*v22) (signed char, signed char, unsigned char, signed int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern void v25 (unsigned char, unsigned char, unsigned int, signed short);
extern void (*v26) (unsigned char, unsigned char, unsigned int, signed short);
extern signed short v27 (signed int, signed short);
extern signed short (*v28) (signed int, signed short);
extern signed int v29 (unsigned char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
signed int v32 = 3;
signed char v31 = -2;

signed short v15 (signed int v34, unsigned int v35, signed char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -2;
unsigned short v39 = 2;
signed char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (unsigned int v41, signed int v42, unsigned int v43, unsigned char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 0;
signed short v46 = -1;
unsigned int v45 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed short v48;
unsigned short v49;
signed short v50;
signed int v51;
unsigned int v52;
v48 = 2 + 0;
v49 = 6 + 1;
v50 = v46 - -3;
v51 = v42 - v47;
v52 = v19 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 14: 
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
unsigned int v55;
signed int v56;
unsigned int v57;
unsigned char v58;
v55 = 3U - 3U;
v56 = -2 - v32;
v57 = 3U + 2U;
v58 = 2 - 5;
v1 (v55, v56, v57, v58);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
