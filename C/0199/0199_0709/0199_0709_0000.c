#include <stdio.h>
#include <stdlib.h>
static signed char v1 (void);
static signed char (*v2) (void) = v1;
extern signed int v3 (signed short, unsigned int, unsigned char);
extern signed int (*v4) (signed short, unsigned int, unsigned char);
extern unsigned char v5 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern void v9 (signed char, signed int, unsigned int);
extern void (*v10) (signed char, signed int, unsigned int);
extern signed short v11 (unsigned int, signed short, signed int, unsigned char);
extern signed short (*v12) (unsigned int, signed short, signed int, unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v17 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned int (*v18) (unsigned char, unsigned int, unsigned short, signed char);
extern signed short v19 (signed int, signed char);
extern signed short (*v20) (signed int, signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned short v23 (unsigned int, signed short);
unsigned short (*v24) (unsigned int, signed short) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v29 (unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed char v32 = 3;
unsigned char v31 = 1;

unsigned short v23 (unsigned int v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 0;
unsigned short v37 = 6;
unsigned short v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (void)
{
{
for (;;) {
unsigned char v41 = 5;
unsigned short v40 = 7;
unsigned char v39 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v42;
unsigned short v43;
unsigned short v44;
unsigned char v45;
v42 = v41 - v39;
v43 = v40 - v40;
v44 = 6 - v40;
v45 = v5 (v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 2: 
{
unsigned int v46;
unsigned short v47;
signed int v48;
v46 = 7U - 0U;
v47 = v40 + 0;
v48 = v29 (v46, v47);
history[history_index++] = (int)v48;
}
break;
case 4: 
{
unsigned short v49;
unsigned short v50;
v49 = v40 - 6;
v50 = v7 (v49);
history[history_index++] = (int)v50;
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
signed char v53;
v53 = v1 ();
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
