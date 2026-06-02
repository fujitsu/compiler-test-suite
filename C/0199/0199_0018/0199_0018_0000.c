#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned char, unsigned short);
extern signed int v3 (signed char, signed int);
extern signed int (*v4) (signed char, signed int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
static void v7 (unsigned int, signed int, unsigned int);
static void (*v8) (unsigned int, signed int, unsigned int) = v7;
extern signed short v9 (signed int, unsigned int, signed short, signed int);
extern signed short (*v10) (signed int, unsigned int, signed short, signed int);
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern void v19 (signed char, unsigned char, unsigned short, signed char);
extern void (*v20) (signed char, unsigned char, unsigned short, signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
unsigned short v27 (unsigned char);
unsigned short (*v28) (unsigned char) = v27;
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed char v32 = 1;
signed short v31 = -2;

unsigned short v29 (void)
{
{
for (;;) {
unsigned short v36 = 5;
signed int v35 = 0;
signed short v34 = -3;
trace++;
switch (trace)
{
case 3: 
return 0;
default: abort ();
}
}
}
}

unsigned short v27 (unsigned char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -1;
unsigned short v39 = 6;
unsigned int v38 = 7U;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v41;
signed int v42;
unsigned int v43;
v41 = v38 + 7U;
v42 = 3 - -1;
v43 = v38 + 3U;
v7 (v41, v42, v43);
}
break;
case 14: 
return v39;
default: abort ();
}
}
}
}

static void v7 (unsigned int v44, signed int v45, unsigned int v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = 1;
unsigned char v48 = 5;
signed short v47 = 1;
trace++;
switch (trace)
{
case 9: 
{
signed int v50;
unsigned int v51;
signed short v52;
signed int v53;
signed short v54;
v50 = v45 + v49;
v51 = 5U - v44;
v52 = v47 + 3;
v53 = v49 - -2;
v54 = v9 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 13: 
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
unsigned char v57;
unsigned short v58;
unsigned int v59;
v57 = 2 - 3;
v58 = 6 + 5;
v59 = v1 (v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
