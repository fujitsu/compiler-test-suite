#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned short, signed short, unsigned int, unsigned char);
static signed int (*v2) (unsigned short, signed short, unsigned int, unsigned char) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern signed short v9 (unsigned int, unsigned int, unsigned short);
extern signed short (*v10) (unsigned int, unsigned int, unsigned short);
extern signed short v11 (unsigned int, unsigned char, signed short, unsigned int);
extern signed short (*v12) (unsigned int, unsigned char, signed short, unsigned int);
unsigned char v13 (unsigned short, unsigned char, unsigned char);
unsigned char (*v14) (unsigned short, unsigned char, unsigned char) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (signed char, signed short, signed short);
extern void (*v20) (signed char, signed short, signed short);
extern signed int v21 (signed short, signed char, unsigned short);
extern signed int (*v22) (signed short, signed char, unsigned short);
extern void v23 (signed char, signed char, unsigned short);
extern void (*v24) (signed char, signed char, unsigned short);
extern signed short v25 (unsigned int, unsigned char, unsigned short, unsigned short);
extern signed short (*v26) (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
unsigned int v32 = 7U;
unsigned short v31 = 0;

unsigned char v13 (unsigned short v34, unsigned char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 5U;
signed short v38 = -4;
unsigned char v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (unsigned short v40, signed short v41, unsigned int v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 0;
unsigned int v45 = 5U;
unsigned short v44 = 2;
trace++;
switch (trace)
{
case 0: 
{
v29 ();
}
break;
case 2: 
{
signed short v47;
unsigned short v48;
v47 = v41 - -4;
v48 = v5 (v47);
history[history_index++] = (int)v48;
}
break;
case 14: 
return -4;
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
unsigned short v51;
signed short v52;
unsigned int v53;
unsigned char v54;
signed int v55;
v51 = v33 + v33;
v52 = 2 - -4;
v53 = 6U - v32;
v54 = 6 + 1;
v55 = v1 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
