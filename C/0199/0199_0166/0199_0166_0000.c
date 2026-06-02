#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned int);
static signed char (*v2) (unsigned int) = v1;
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern unsigned char v5 (signed short, signed int, signed short);
extern unsigned char (*v6) (signed short, signed int, signed short);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern unsigned char v9 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v10) (unsigned int, unsigned char, unsigned char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern unsigned short v13 (signed short, unsigned char, signed char);
extern unsigned short (*v14) (signed short, unsigned char, signed char);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
void v19 (signed char, unsigned char, unsigned char, signed short);
void (*v20) (signed char, unsigned char, unsigned char, signed short) = v19;
extern void v21 (signed int, signed int);
extern void (*v22) (signed int, signed int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern unsigned char v27 (signed short, signed int, signed int, signed short);
extern unsigned char (*v28) (signed short, signed int, signed int, signed short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed short v32 = -3;
signed int v31 = 1;

void v29 (void)
{
{
for (;;) {
unsigned char v36 = 3;
unsigned char v35 = 6;
signed short v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed char v37, unsigned char v38, unsigned char v39, signed short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 0;
signed short v42 = 0;
signed char v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 2;
unsigned int v46 = 5U;
signed char v45 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed int v48;
signed int v49;
v48 = 0 - -4;
v49 = -3 - -3;
v21 (v48, v49);
}
break;
case 2: 
{
unsigned int v50;
unsigned char v51;
unsigned char v52;
unsigned char v53;
v50 = v44 - v46;
v51 = v47 - 3;
v52 = v47 + v47;
v53 = v9 (v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 14: 
return -3;
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
unsigned int v56;
signed char v57;
v56 = 0U + 0U;
v57 = v1 (v56);
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
