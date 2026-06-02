#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed short, signed char, signed int);
static unsigned char (*v2) (signed short, signed char, signed int) = v1;
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
void v5 (unsigned char, unsigned int);
void (*v6) (unsigned char, unsigned int) = v5;
extern void v7 (signed short, unsigned char, signed int);
extern void (*v8) (signed short, unsigned char, signed int);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned char v11 (signed short, unsigned int, unsigned char, signed short);
extern unsigned char (*v12) (signed short, unsigned int, unsigned char, signed short);
unsigned short v13 (unsigned int);
unsigned short (*v14) (unsigned int) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed short, unsigned short);
extern signed char (*v22) (signed short, unsigned short);
extern unsigned int v23 (signed char, signed short);
extern unsigned int (*v24) (signed char, signed short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (signed char, signed short, unsigned short);
extern unsigned short (*v28) (signed char, signed short, unsigned short);
extern signed char v29 (signed char, unsigned char, unsigned int, signed int);
extern signed char (*v30) (signed char, unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed char v32 = 3;
signed short v31 = -2;

unsigned short v13 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 6U;
unsigned int v36 = 0U;
signed char v35 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v38, unsigned int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 2;
signed short v41 = 1;
signed int v40 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed short v43, signed char v44, signed int v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 2;
signed int v47 = -1;
signed short v46 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v49;
unsigned int v50;
unsigned char v51;
signed short v52;
unsigned char v53;
v49 = v43 + v46;
v50 = 2U + 0U;
v51 = 5 + 1;
v52 = 1 - 0;
v53 = v11 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 2: 
{
signed short v54;
unsigned short v55;
v54 = -3 - v46;
v55 = v9 (v54);
history[history_index++] = (int)v55;
}
break;
case 8: 
{
unsigned int v56;
v56 = v17 ();
history[history_index++] = (int)v56;
}
break;
case 12: 
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
signed short v59;
signed char v60;
signed int v61;
unsigned char v62;
v59 = 1 + -3;
v60 = v32 - v32;
v61 = v33 - v33;
v62 = v1 (v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
