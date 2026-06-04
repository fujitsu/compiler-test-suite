#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (signed int, signed int, signed int);
static unsigned int (*v2) (signed int, signed int, signed int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern void v7 (unsigned short, signed int, unsigned short);
extern void (*v8) (unsigned short, signed int, unsigned short);
extern unsigned short v9 (signed int, unsigned short);
extern unsigned short (*v10) (signed int, unsigned short);
extern unsigned short v11 (unsigned short, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned int);
extern signed short v13 (signed short, signed short, signed char, signed int);
extern signed short (*v14) (signed short, signed short, signed char, signed int);
extern signed char v15 (signed char, signed int, signed short, signed char);
extern signed char (*v16) (signed char, signed int, signed short, signed char);
extern unsigned char v17 (unsigned int, signed int, signed short, signed char);
extern unsigned char (*v18) (unsigned int, signed int, signed short, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed short, signed short, signed int);
extern unsigned short (*v22) (signed short, signed short, signed int);
extern unsigned char v23 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned char);
unsigned char v25 (signed int, unsigned int, signed short, unsigned char);
unsigned char (*v26) (signed int, unsigned int, signed short, unsigned char) = v25;
extern signed short v27 (unsigned int, unsigned char, unsigned int, signed short);
extern signed short (*v28) (unsigned int, unsigned char, unsigned int, signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned short v32 = 5;
signed int v31 = 2;

unsigned char v25 (signed int v34, unsigned int v35, signed short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 2;
signed char v39 = 2;
unsigned short v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (signed int v41, signed int v42, signed int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 4U;
unsigned char v45 = 0;
signed int v44 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v47;
signed int v48;
unsigned short v49;
v47 = 3 + 2;
v48 = 1 + v44;
v49 = 7 - 3;
v7 (v47, v48, v49);
}
break;
case 2: 
{
signed short v50;
signed short v51;
signed int v52;
unsigned short v53;
v50 = 3 - 2;
v51 = -3 - -2;
v52 = v42 + 0;
v53 = v21 (v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 14: 
return 2U;
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
signed int v56;
signed int v57;
signed int v58;
unsigned int v59;
v56 = 0 + v31;
v57 = 0 + v31;
v58 = -4 + v31;
v59 = v1 (v56, v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
