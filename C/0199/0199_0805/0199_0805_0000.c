#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (unsigned short, signed int);
static unsigned int (*v2) (unsigned short, signed int) = v1;
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern unsigned short v5 (signed short, unsigned char, unsigned char, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned char, signed char);
extern unsigned short v7 (signed char, unsigned short, signed short, unsigned int);
extern unsigned short (*v8) (signed char, unsigned short, signed short, unsigned int);
extern unsigned short v9 (signed short, signed char, unsigned char);
extern unsigned short (*v10) (signed short, signed char, unsigned char);
extern void v11 (signed int, signed int, signed short, unsigned short);
extern void (*v12) (signed int, signed int, signed short, unsigned short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (unsigned short, signed short, unsigned char);
extern unsigned int (*v18) (unsigned short, signed short, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
signed short v21 (signed int, signed int, unsigned int, signed char);
signed short (*v22) (signed int, signed int, unsigned int, signed char) = v21;
extern signed int v23 (unsigned short, signed short, unsigned int, unsigned int);
extern signed int (*v24) (unsigned short, signed short, unsigned int, unsigned int);
extern unsigned int v25 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned short, signed int, unsigned char);
extern void v27 (unsigned int, unsigned int, unsigned int);
extern void (*v28) (unsigned int, unsigned int, unsigned int);
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed char v32 = 3;
signed int v31 = 1;

signed short v21 (signed int v34, signed int v35, unsigned int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 3;
unsigned short v39 = 0;
unsigned int v38 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (unsigned short v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -3;
signed char v44 = 0;
unsigned int v43 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v46;
unsigned short v47;
signed int v48;
unsigned char v49;
unsigned int v50;
v46 = v41 + v41;
v47 = v41 - 3;
v48 = v45 - v42;
v49 = 1 + 5;
v50 = v25 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 8: 
{
unsigned short v51;
signed short v52;
unsigned char v53;
unsigned int v54;
v51 = v41 + 4;
v52 = -3 - -3;
v53 = 3 - 1;
v54 = v17 (v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 10: 
{
signed int v55;
signed int v56;
signed short v57;
unsigned short v58;
v55 = v45 + v42;
v56 = v42 + v42;
v57 = 2 + -3;
v58 = v41 - v41;
v11 (v55, v56, v57, v58);
}
break;
case 12: 
return 5U;
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
unsigned short v61;
signed int v62;
unsigned int v63;
v61 = 3 + 0;
v62 = 3 - v33;
v63 = v1 (v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
