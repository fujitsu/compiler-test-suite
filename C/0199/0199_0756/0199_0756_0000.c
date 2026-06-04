#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned char);
static unsigned short (*v2) (unsigned char) = v1;
extern signed int v3 (signed int, signed char, unsigned int, signed char);
extern signed int (*v4) (signed int, signed char, unsigned int, signed char);
extern signed short v5 (unsigned short, signed short, signed char, unsigned int);
extern signed short (*v6) (unsigned short, signed short, signed char, unsigned int);
extern signed int v7 (unsigned char, unsigned short, unsigned int);
extern signed int (*v8) (unsigned char, unsigned short, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (signed int, signed short, signed char, unsigned char);
extern signed char (*v12) (signed int, signed short, signed char, unsigned char);
extern signed short v13 (signed char, signed int, signed char);
extern signed short (*v14) (signed char, signed int, signed char);
unsigned int v15 (signed char);
unsigned int (*v16) (signed char) = v15;
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern unsigned short v19 (unsigned short, unsigned char, signed int, signed char);
extern unsigned short (*v20) (unsigned short, unsigned char, signed int, signed char);
extern signed int v21 (signed short, unsigned char, unsigned char, unsigned short);
extern signed int (*v22) (signed short, unsigned char, unsigned char, unsigned short);
extern signed char v23 (signed int, unsigned int, unsigned char);
extern signed char (*v24) (signed int, unsigned int, unsigned char);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed short, unsigned int, unsigned short);
extern void (*v30) (signed short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed short v32 = 3;
unsigned int v31 = 3U;

unsigned int v15 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 2;
unsigned int v36 = 5U;
unsigned char v35 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned char v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
signed int v41 = -2;
unsigned int v40 = 6U;
unsigned int v39 = 3U;
trace++;
switch (trace)
{
case 0: 
{
signed int v42;
unsigned int v43;
unsigned char v44;
signed char v45;
v42 = -2 - 2;
v43 = v39 - v40;
v44 = 0 + v38;
v45 = v23 (v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 2: 
{
unsigned short v46;
unsigned char v47;
signed int v48;
signed char v49;
unsigned short v50;
v46 = 4 + 2;
v47 = v38 + 5;
v48 = 0 + v41;
v49 = 0 - -4;
v50 = v19 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 4: 
{
signed int v51;
signed short v52;
signed char v53;
unsigned char v54;
signed char v55;
v51 = v41 - v41;
v52 = 3 + -4;
v53 = -4 - 3;
v54 = v38 + v38;
v55 = v11 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 14: 
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
unsigned char v58;
unsigned short v59;
v58 = 6 - 7;
v59 = v1 (v58);
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
