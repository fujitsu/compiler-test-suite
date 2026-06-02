#include <stdio.h>
#include <stdlib.h>
static void v1 (signed int, unsigned short, signed int);
static void (*v2) (signed int, unsigned short, signed int) = v1;
extern unsigned int v3 (unsigned short, signed int, unsigned int);
extern unsigned int (*v4) (unsigned short, signed int, unsigned int);
extern signed char v5 (unsigned char, signed short, unsigned char);
extern signed char (*v6) (unsigned char, signed short, unsigned char);
extern signed int v9 (unsigned char, unsigned short, unsigned short);
extern signed int (*v10) (unsigned char, unsigned short, unsigned short);
signed short v11 (signed char, unsigned short, unsigned char, unsigned short);
signed short (*v12) (signed char, unsigned short, unsigned char, unsigned short) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (signed short, unsigned short, unsigned short, signed short);
extern signed int (*v16) (signed short, unsigned short, unsigned short, signed short);
extern signed int v17 (unsigned int, unsigned short, signed short, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, signed short, unsigned int);
extern unsigned short v19 (signed int, signed short, signed int, unsigned int);
extern unsigned short (*v20) (signed int, signed short, signed int, unsigned int);
extern unsigned short v21 (unsigned int, signed char, signed int);
extern unsigned short (*v22) (unsigned int, signed char, signed int);
extern signed char v23 (signed int, unsigned int, unsigned short);
extern signed char (*v24) (signed int, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
void v27 (unsigned int, signed char, unsigned char, unsigned int);
void (*v28) (unsigned int, signed char, unsigned char, unsigned int) = v27;
extern unsigned char v29 (unsigned char, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
unsigned char v32 = 5;
unsigned char v31 = 1;

void v27 (unsigned int v34, signed char v35, unsigned char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 2;
unsigned int v39 = 2U;
signed int v38 = 1;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed short v11 (signed char v41, unsigned short v42, unsigned char v43, unsigned short v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 7;
signed int v46 = 3;
signed char v45 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (signed int v48, unsigned short v49, signed int v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 6U;
unsigned short v52 = 4;
signed short v51 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v54;
signed short v55;
unsigned char v56;
signed char v57;
v54 = 4 - 6;
v55 = -2 - v51;
v56 = 3 - 3;
v57 = v5 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 16: 
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
signed int v60;
unsigned short v61;
signed int v62;
v60 = 0 + 3;
v61 = 6 - 3;
v62 = -2 - -1;
v1 (v60, v61, v62);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
