#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned int, signed int, unsigned int, unsigned short);
static unsigned short (*v2) (unsigned int, signed int, unsigned int, unsigned short) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned short v5 (unsigned char, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned char, unsigned int, unsigned short);
extern unsigned char v7 (signed char, unsigned int);
extern unsigned char (*v8) (signed char, unsigned int);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern unsigned int v11 (unsigned int, signed short, signed int, unsigned short);
extern unsigned int (*v12) (unsigned int, signed short, signed int, unsigned short);
extern signed char v13 (unsigned char, unsigned char);
extern signed char (*v14) (unsigned char, unsigned char);
extern signed int v15 (unsigned short, signed short, unsigned int, unsigned short);
extern signed int (*v16) (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (signed short, signed int, unsigned char, signed int);
extern unsigned int (*v26) (signed short, signed int, unsigned char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (signed short, unsigned int, unsigned short);
extern void (*v30) (signed short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
signed short v32 = 0;
signed char v31 = 1;

static unsigned short v1 (unsigned int v34, signed int v35, unsigned int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 1;
signed short v39 = 1;
unsigned int v38 = 7U;
trace++;
switch (trace)
{
case 0: 
{
v23 ();
}
break;
case 2: 
{
unsigned int v41;
unsigned int v42;
v41 = 0U + 3U;
v42 = v19 (v41);
history[history_index++] = (int)v42;
}
break;
case 4: 
{
unsigned int v43;
unsigned int v44;
v43 = v34 + v36;
v44 = v19 (v43);
history[history_index++] = (int)v44;
}
break;
case 6: 
{
unsigned char v45;
unsigned int v46;
unsigned short v47;
unsigned short v48;
v45 = 6 + 1;
v46 = v36 - v34;
v47 = v40 + 1;
v48 = v5 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 14: 
return 7;
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
unsigned int v51;
signed int v52;
unsigned int v53;
unsigned short v54;
unsigned short v55;
v51 = 5U - 5U;
v52 = -2 + 2;
v53 = 6U + 2U;
v54 = 2 - v33;
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
