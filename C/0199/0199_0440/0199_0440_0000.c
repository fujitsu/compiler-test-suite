#include <stdio.h>
#include <stdlib.h>
static signed char v1 (void);
static signed char (*v2) (void) = v1;
extern unsigned int v3 (unsigned short, signed char, signed short, unsigned int);
extern unsigned int (*v4) (unsigned short, signed char, signed short, unsigned int);
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern unsigned short v7 (signed int, signed short);
extern unsigned short (*v8) (signed int, signed short);
extern unsigned short v9 (signed char, unsigned char, unsigned int);
extern unsigned short (*v10) (signed char, unsigned char, unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
unsigned short v15 (signed int, unsigned int, unsigned char);
unsigned short (*v16) (signed int, unsigned int, unsigned char) = v15;
extern signed short v17 (signed char, signed char, signed int);
extern signed short (*v18) (signed char, signed char, signed int);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed short, signed short);
extern signed char (*v22) (signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned char v25 (unsigned int, signed int);
unsigned char (*v26) (unsigned int, signed int) = v25;
extern signed int v27 (signed int, unsigned short, signed int, unsigned int);
extern signed int (*v28) (signed int, unsigned short, signed int, unsigned int);
extern signed char v29 (signed int, signed char, signed int, unsigned short);
extern signed char (*v30) (signed int, signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed int v32 = -2;
unsigned short v31 = 2;

unsigned char v25 (unsigned int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 2;
signed int v37 = -2;
unsigned int v36 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed int v39, unsigned int v40, unsigned char v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 2;
signed short v43 = 2;
signed int v42 = -3;
trace++;
switch (trace)
{
case 2: 
{
signed int v45;
signed char v46;
signed int v47;
unsigned short v48;
signed char v49;
v45 = -3 - 3;
v46 = v44 + v44;
v47 = v39 - v42;
v48 = 2 + 0;
v49 = v29 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 6: 
{
signed int v50;
unsigned short v51;
signed int v52;
unsigned int v53;
signed int v54;
v50 = v39 + v42;
v51 = 3 + 2;
v52 = v42 + v39;
v53 = v40 - v40;
v54 = v27 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 8: 
return 5;
case 10: 
return 1;
default: abort ();
}
}
}
}

static signed char v1 (void)
{
{
for (;;) {
unsigned char v57 = 3;
signed short v56 = -2;
signed char v55 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v58;
signed short v59;
unsigned short v60;
v58 = -1 + 0;
v59 = 0 + -1;
v60 = v7 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return v55;
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
signed char v63;
v63 = v1 ();
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
