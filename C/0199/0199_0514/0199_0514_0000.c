#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
extern unsigned int v3 (signed int, unsigned short, unsigned short, unsigned char);
extern unsigned int (*v4) (signed int, unsigned short, unsigned short, unsigned char);
signed char v5 (unsigned short, signed int);
signed char (*v6) (unsigned short, signed int) = v5;
extern unsigned int v7 (signed short, unsigned short, signed short);
extern unsigned int (*v8) (signed short, unsigned short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
void v11 (signed short, signed short, unsigned int);
void (*v12) (signed short, signed short, unsigned int) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
signed int v19 (signed short, unsigned char, signed int, unsigned short);
signed int (*v20) (signed short, unsigned char, signed int, unsigned short) = v19;
extern signed char v21 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v22) (signed short, unsigned short, signed int, unsigned int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed char v27 (unsigned char, signed int);
extern signed char (*v28) (unsigned char, signed int);
extern unsigned int v29 (signed int, unsigned int);
extern unsigned int (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
unsigned int v32 = 5U;
signed short v31 = 0;

signed int v19 (signed short v34, unsigned char v35, signed int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 3;
unsigned int v39 = 0U;
unsigned char v38 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v41, signed short v42, unsigned int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -4;
unsigned char v45 = 7;
signed char v44 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v47, signed int v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 5;
unsigned int v50 = 3U;
signed char v49 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v52;
signed char v53;
v52 = 2U + v50;
v53 = v15 (v52);
history[history_index++] = (int)v53;
}
break;
case 10: 
{
unsigned int v54;
signed char v55;
v54 = v50 + 5U;
v55 = v15 (v54);
history[history_index++] = (int)v55;
}
break;
case 12: 
return v49;
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
unsigned char v59;
signed short v60;
v58 = -3 + -1;
v59 = 1 - 3;
v60 = v1 (v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
