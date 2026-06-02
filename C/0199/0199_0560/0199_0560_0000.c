#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned short, signed char, signed int);
static signed char (*v2) (unsigned short, signed char, signed int) = v1;
extern unsigned int v3 (signed int, signed char);
extern unsigned int (*v4) (signed int, signed char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v9 (signed int, unsigned char);
extern signed int (*v10) (signed int, unsigned char);
extern unsigned char v11 (unsigned short, signed int, signed int);
extern unsigned char (*v12) (unsigned short, signed int, signed int);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned int v19 (unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned int, signed short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed char);
extern void (*v24) (signed char);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed short v27 (unsigned int, signed char);
extern signed short (*v28) (unsigned int, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned short v32 = 6;
unsigned char v31 = 6;

signed char v13 (void)
{
{
for (;;) {
unsigned short v36 = 0;
unsigned short v35 = 1;
signed char v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned short v37, signed char v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 4U;
signed char v41 = -4;
unsigned int v40 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed char v43;
v43 = v29 ();
history[history_index++] = (int)v43;
}
break;
case 6: 
{
unsigned short v44;
v44 = v5 ();
history[history_index++] = (int)v44;
}
break;
case 12: 
return -2;
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
unsigned short v47;
signed char v48;
signed int v49;
signed char v50;
v47 = v33 - 0;
v48 = 0 + -2;
v49 = 3 - -3;
v50 = v1 (v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
