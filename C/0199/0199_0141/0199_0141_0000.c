#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (void);
static unsigned char (*v2) (void) = v1;
extern void v3 (signed char, signed short);
extern void (*v4) (signed char, signed short);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed int v7 (signed int, unsigned short, signed char);
extern signed int (*v8) (signed int, unsigned short, signed char);
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern void v13 (signed char, unsigned char);
extern void (*v14) (signed char, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern signed char v19 (signed int, signed short, signed short);
extern signed char (*v20) (signed int, signed short, signed short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed int v23 (unsigned short, signed int, signed char);
extern signed int (*v24) (unsigned short, signed int, signed char);
static unsigned short v25 (unsigned int, unsigned char, unsigned short, unsigned short);
static unsigned short (*v26) (unsigned int, unsigned char, unsigned short, unsigned short) = v25;
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern void v29 (unsigned char);
extern void (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
unsigned int v32 = 1U;
unsigned int v31 = 2U;

static unsigned short v25 (unsigned int v34, unsigned char v35, unsigned short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 4;
signed int v39 = -2;
signed short v38 = -4;
trace++;
switch (trace)
{
case 7: 
return v36;
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
unsigned short v43 = 1;
signed short v42 = -2;
unsigned char v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (void)
{
{
for (;;) {
unsigned short v46 = 1;
unsigned short v45 = 7;
unsigned int v44 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v47;
v47 = 7 + 7;
v29 (v47);
}
break;
case 2: 
{
signed int v48;
signed short v49;
signed short v50;
signed char v51;
v48 = -2 - -2;
v49 = 2 + -2;
v50 = 0 - 2;
v51 = v19 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 6: 
{
unsigned int v52;
unsigned char v53;
unsigned short v54;
unsigned short v55;
unsigned short v56;
v52 = 2U - 7U;
v53 = 6 + 1;
v54 = 1 - 2;
v55 = v46 - v46;
v56 = v25 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 8: 
{
unsigned char v57;
signed int v58;
v57 = 3 + 4;
v58 = v11 (v57);
history[history_index++] = (int)v58;
}
break;
case 10: 
{
unsigned int v59;
v59 = v15 ();
history[history_index++] = (int)v59;
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
unsigned char v62;
v62 = v1 ();
history[history_index++] = (int)v62;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
