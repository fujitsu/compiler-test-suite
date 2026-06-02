#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (unsigned int, unsigned int);
extern void (*v10) (unsigned int, unsigned int);
static unsigned short v11 (signed char, unsigned char);
static unsigned short (*v12) (signed char, unsigned char) = v11;
extern void v13 (signed int, signed char, unsigned char, signed int);
extern void (*v14) (signed int, signed char, unsigned char, signed int);
signed short v15 (signed short, unsigned int);
signed short (*v16) (signed short, unsigned int) = v15;
extern signed char v17 (signed short, signed char, unsigned char);
extern signed char (*v18) (signed short, signed char, unsigned char);
extern signed int v19 (signed short);
extern signed int (*v20) (signed short);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern signed char v27 (unsigned char, unsigned int, unsigned short);
extern signed char (*v28) (unsigned char, unsigned int, unsigned short);
extern unsigned int v29 (unsigned char, signed char, unsigned char);
extern unsigned int (*v30) (unsigned char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed short v32 = 3;
unsigned short v31 = 2;

signed short v15 (signed short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 1;
signed short v37 = 1;
unsigned char v36 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v11 (signed char v39, unsigned char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 5;
signed short v42 = -3;
unsigned short v41 = 5;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v44;
v44 = v23 ();
history[history_index++] = (int)v44;
}
break;
case 4: 
{
unsigned char v45;
v45 = v23 ();
history[history_index++] = (int)v45;
}
break;
case 6: 
return 5;
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
signed char v48 = 2;
signed char v47 = -3;
signed int v46 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed char v49;
unsigned char v50;
unsigned short v51;
v49 = v47 - v47;
v50 = 1 + 6;
v51 = v11 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 7: 
{
unsigned char v52;
signed char v53;
unsigned char v54;
unsigned int v55;
v52 = 0 - 3;
v53 = v47 - v47;
v54 = 2 + 0;
v55 = v29 (v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 9: 
return 3U;
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
signed int v58;
signed short v59;
v58 = 2 - -4;
v59 = v1 (v58);
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
