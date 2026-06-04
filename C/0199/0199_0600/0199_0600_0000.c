#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
signed short v3 (signed int, signed char, unsigned int);
signed short (*v4) (signed int, signed char, unsigned int) = v3;
extern unsigned short v5 (signed int, unsigned int, unsigned int, signed short);
extern unsigned short (*v6) (signed int, unsigned int, unsigned int, signed short);
extern signed char v7 (signed char, unsigned char, unsigned int, unsigned int);
extern signed char (*v8) (signed char, unsigned char, unsigned int, unsigned int);
extern signed char v9 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v10) (unsigned int, unsigned int, signed char, signed short);
signed short v11 (void);
signed short (*v12) (void) = v11;
unsigned char v13 (unsigned short, unsigned char, unsigned short, unsigned int);
unsigned char (*v14) (unsigned short, unsigned char, unsigned short, unsigned int) = v13;
extern signed char v15 (signed char, signed char, signed char);
extern signed char (*v16) (signed char, signed char, signed char);
extern unsigned short v17 (unsigned int, signed short);
extern unsigned short (*v18) (unsigned int, signed short);
extern void v19 (signed short, signed char, signed short, unsigned short);
extern void (*v20) (signed short, signed char, signed short, unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned char v25 (signed char, signed short);
extern unsigned char (*v26) (signed char, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed short v32 = -2;
unsigned int v31 = 5U;

unsigned char v13 (unsigned short v34, unsigned char v35, unsigned short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1;
signed short v39 = -1;
unsigned int v38 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed short v43 = -3;
signed short v42 = -1;
unsigned int v41 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed int v44, signed char v45, unsigned int v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 4U;
signed short v48 = -1;
signed short v47 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v50;
v50 = v21 ();
history[history_index++] = (int)v50;
}
break;
case 3: 
{
signed char v51;
unsigned char v52;
unsigned int v53;
unsigned int v54;
signed char v55;
v51 = 3 - -1;
v52 = 0 - 0;
v53 = 6U - 3U;
v54 = 6U + 5U;
v55 = v7 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 7: 
{
signed char v56;
unsigned char v57;
unsigned int v58;
unsigned int v59;
signed char v60;
v56 = -4 + -3;
v57 = 2 - 0;
v58 = v46 - v46;
v59 = v49 - v46;
v60 = v7 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 13: 
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
signed char v63;
v63 = 3 + -3;
v1 (v63);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
