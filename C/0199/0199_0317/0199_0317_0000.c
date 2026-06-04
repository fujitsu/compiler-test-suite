#include <stdio.h>
#include <stdlib.h>
static signed char v1 (void);
static signed char (*v2) (void) = v1;
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern signed char v5 (unsigned char, unsigned int);
extern signed char (*v6) (unsigned char, unsigned int);
extern signed char v7 (unsigned char, signed int);
extern signed char (*v8) (unsigned char, signed int);
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
extern unsigned int v11 (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v12) (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned short v13 (signed int, signed int, unsigned short);
extern unsigned short (*v14) (signed int, signed int, unsigned short);
extern unsigned short v15 (signed short, signed short, unsigned short, signed char);
extern unsigned short (*v16) (signed short, signed short, unsigned short, signed char);
extern signed int v17 (unsigned int, signed char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned int, signed char, unsigned int, unsigned short);
extern signed char v19 (unsigned short, signed char, signed int, unsigned char);
extern signed char (*v20) (unsigned short, signed char, signed int, unsigned char);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (signed short, unsigned int, signed char, signed char);
extern unsigned int (*v26) (signed short, unsigned int, signed char, signed char);
extern unsigned char v27 (signed int, signed int, unsigned int);
extern unsigned char (*v28) (signed int, signed int, unsigned int);
signed short v29 (signed char);
signed short (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed char v32 = -2;
unsigned char v31 = 5;

signed short v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 1;
unsigned char v36 = 4;
unsigned char v35 = 1;
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
unsigned short v40 = 0;
unsigned short v39 = 0;
unsigned char v38 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v41;
unsigned int v42;
signed char v43;
signed char v44;
unsigned int v45;
v41 = -2 - -2;
v42 = 6U + 4U;
v43 = -3 + -3;
v44 = 2 - 2;
v45 = v25 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 2: 
{
signed short v46;
unsigned short v47;
unsigned char v48;
unsigned int v49;
unsigned int v50;
v46 = 0 + 0;
v47 = v40 - v40;
v48 = v38 - 2;
v49 = 0U - 3U;
v50 = v11 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 8: 
{
signed int v51;
unsigned char v52;
v51 = 0 - 2;
v52 = v3 (v51);
history[history_index++] = (int)v52;
}
break;
case 12: 
return 2;
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
signed char v55;
v55 = v1 ();
history[history_index++] = (int)v55;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
