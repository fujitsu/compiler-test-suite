#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, signed int, unsigned short);
extern signed int (*v2) (unsigned short, signed int, unsigned short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (signed short);
extern void (*v6) (signed short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (unsigned char, signed short, signed int, signed short);
extern void (*v10) (unsigned char, signed short, signed int, signed short);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned char v13 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned int);
unsigned char v15 (signed short, signed short);
unsigned char (*v16) (signed short, signed short) = v15;
extern unsigned short v17 (signed char, unsigned char);
extern unsigned short (*v18) (signed char, unsigned char);
extern unsigned char v21 (unsigned char, unsigned char, signed char);
extern unsigned char (*v22) (unsigned char, unsigned char, signed char);
unsigned char v23 (signed char, unsigned char, signed int);
unsigned char (*v24) (signed char, unsigned char, signed int) = v23;
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
unsigned int v27 (unsigned char, unsigned char, signed char);
unsigned int (*v28) (unsigned char, unsigned char, signed char) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned int v32 = 1U;
signed char v31 = -1;

unsigned int v27 (unsigned char v34, unsigned char v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 6;
unsigned char v38 = 5;
signed char v37 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed char v40, unsigned char v41, signed int v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = 3;
signed short v44 = -4;
signed short v43 = -3;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v46;
unsigned int v47;
v46 = 0U - 7U;
v47 = v25 (v46);
history[history_index++] = (int)v47;
}
break;
case 8: 
{
unsigned int v48;
unsigned int v49;
v48 = 6U + 3U;
v49 = v25 (v48);
history[history_index++] = (int)v49;
}
break;
case 10: 
return v41;
default: abort ();
}
}
}
}

unsigned char v15 (signed short v50, signed short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 3;
unsigned int v53 = 6U;
unsigned short v52 = 7;
trace++;
switch (trace)
{
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
unsigned short v57;
signed int v58;
unsigned short v59;
signed int v60;
v57 = 4 - 5;
v58 = -2 - 1;
v59 = 5 + 0;
v60 = v1 (v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
