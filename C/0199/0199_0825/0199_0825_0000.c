#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern void v3 (signed int, unsigned int);
extern void (*v4) (signed int, unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
void v7 (signed char, signed char, signed int, signed short);
void (*v8) (signed char, signed char, signed int, signed short) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
static void v11 (signed char, unsigned int, signed int);
static void (*v12) (signed char, unsigned int, signed int) = v11;
extern unsigned short v13 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned char, unsigned int);
extern unsigned short v15 (unsigned int, signed char);
extern unsigned short (*v16) (unsigned int, signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (signed char, signed int);
extern void (*v20) (signed char, signed int);
extern signed short v21 (unsigned char, signed int);
extern signed short (*v22) (unsigned char, signed int);
extern signed char v23 (unsigned short, signed int);
extern signed char (*v24) (unsigned short, signed int);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 7U;
signed int v31 = 1;

static void v11 (signed char v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 1;
unsigned int v38 = 0U;
signed char v37 = -4;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v40;
signed char v41;
unsigned short v42;
v40 = 6U + v38;
v41 = -3 - v34;
v42 = v15 (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}

void v7 (signed char v43, signed char v44, signed int v45, signed short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 0;
signed int v48 = 1;
signed short v47 = -2;
trace++;
switch (trace)
{
case 5: 
{
signed char v50;
unsigned int v51;
signed int v52;
v50 = v43 - 2;
v51 = 1U - 1U;
v52 = v45 + -3;
v11 (v50, v51, v52);
}
break;
case 17: 
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
signed short v55;
unsigned int v56;
v55 = -3 + 0;
v56 = v1 (v55);
history[history_index++] = (int)v56;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
