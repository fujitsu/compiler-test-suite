#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned int, signed short);
static void (*v2) (unsigned int, signed short) = v1;
extern unsigned int v3 (unsigned char, signed char);
extern unsigned int (*v4) (unsigned char, signed char);
extern unsigned short v5 (unsigned int, signed int, signed short);
extern unsigned short (*v6) (unsigned int, signed int, signed short);
extern unsigned short v7 (unsigned int, signed char, signed char, signed short);
extern unsigned short (*v8) (unsigned int, signed char, signed char, signed short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern unsigned short v11 (signed short, signed char);
extern unsigned short (*v12) (signed short, signed char);
extern signed int v13 (signed int, unsigned short, signed int, unsigned char);
extern signed int (*v14) (signed int, unsigned short, signed int, unsigned char);
unsigned int v15 (unsigned int, signed short);
unsigned int (*v16) (unsigned int, signed short) = v15;
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern signed char v19 (signed char, signed int);
extern signed char (*v20) (signed char, signed int);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
signed short v23 (unsigned int, unsigned int, signed short, signed char);
signed short (*v24) (unsigned int, unsigned int, signed short, signed char) = v23;
extern signed char v25 (signed short, unsigned int, unsigned int, unsigned int);
extern signed char (*v26) (signed short, unsigned int, unsigned int, unsigned int);
extern void v27 (unsigned char, signed char, unsigned int, unsigned short);
extern void (*v28) (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed char v32 = 0;
unsigned int v31 = 4U;

signed short v23 (unsigned int v34, unsigned int v35, signed short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 7U;
unsigned int v39 = 6U;
unsigned char v38 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned int v41, signed short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = 2;
unsigned char v44 = 7;
unsigned char v43 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (unsigned int v46, signed short v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 3;
unsigned char v49 = 1;
signed int v48 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v51;
signed char v52;
unsigned int v53;
v51 = 6 - 3;
v52 = 2 - -3;
v53 = v3 (v51, v52);
history[history_index++] = (int)v53;
}
break;
case 4: 
{
signed short v54;
signed char v55;
unsigned short v56;
v54 = 2 - -4;
v55 = 0 + 2;
v56 = v11 (v54, v55);
history[history_index++] = (int)v56;
}
break;
case 6: 
{
signed char v57;
signed char v58;
v57 = -1 + 2;
v58 = v9 (v57);
history[history_index++] = (int)v58;
}
break;
case 12: 
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
unsigned int v61;
signed short v62;
v61 = v31 - v31;
v62 = 0 - v33;
v1 (v61, v62);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
