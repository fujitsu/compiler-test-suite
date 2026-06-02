#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed int, signed int, unsigned char, unsigned char);
static signed short (*v2) (signed int, signed int, unsigned char, unsigned char) = v1;
extern signed int v3 (signed char, signed int, signed short);
extern signed int (*v4) (signed char, signed int, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (signed char, signed short, signed char);
extern unsigned char (*v8) (signed char, signed short, signed char);
extern unsigned short v9 (unsigned int, signed int, unsigned short);
extern unsigned short (*v10) (unsigned int, signed int, unsigned short);
extern signed char v11 (unsigned char, unsigned short, signed char, signed short);
extern signed char (*v12) (unsigned char, unsigned short, signed char, signed short);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (unsigned char, unsigned int);
extern void (*v18) (unsigned char, unsigned int);
signed int v19 (signed int);
signed int (*v20) (signed int) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v25 (signed short, signed short, unsigned char, unsigned char);
extern void (*v26) (signed short, signed short, unsigned char, unsigned char);
extern void v27 (unsigned short, unsigned int, unsigned int, unsigned char);
extern void (*v28) (unsigned short, unsigned int, unsigned int, unsigned char);
extern unsigned int v29 (signed int, signed char);
extern unsigned int (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned short v32 = 0;
signed short v31 = 3;

signed int v19 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 3U;
unsigned char v36 = 6;
signed short v35 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed int v38, signed int v39, unsigned char v40, unsigned char v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 5U;
signed int v43 = -4;
unsigned short v42 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v45;
unsigned int v46;
v45 = 2 + 6;
v46 = v44 + 0U;
v17 (v45, v46);
}
break;
case 2: 
{
unsigned char v47;
unsigned short v48;
signed char v49;
signed short v50;
signed char v51;
v47 = 3 + v41;
v48 = v42 + 7;
v49 = -4 - 3;
v50 = 2 + -4;
v51 = v11 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 12: 
return 0;
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
signed int v54;
signed int v55;
unsigned char v56;
unsigned char v57;
signed short v58;
v54 = v33 + 0;
v55 = v33 - v33;
v56 = 6 + 6;
v57 = 1 - 2;
v58 = v1 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
