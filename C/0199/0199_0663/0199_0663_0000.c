#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int, signed short, unsigned short);
extern unsigned short (*v2) (signed int, signed short, unsigned short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
signed char v5 (unsigned char);
signed char (*v6) (unsigned char) = v5;
extern signed char v7 (unsigned short, unsigned char);
extern signed char (*v8) (unsigned short, unsigned char);
extern unsigned int v9 (signed char, unsigned int, signed char);
extern unsigned int (*v10) (signed char, unsigned int, signed char);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed short, unsigned int, signed int, signed short);
extern unsigned short (*v16) (signed short, unsigned int, signed int, signed short);
void v17 (unsigned char, unsigned int);
void (*v18) (unsigned char, unsigned int) = v17;
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
unsigned char v23 (unsigned char);
unsigned char (*v24) (unsigned char) = v23;
unsigned char v25 (signed char, signed char);
unsigned char (*v26) (signed char, signed char) = v25;
extern unsigned int v27 (unsigned char, signed short, signed int);
extern unsigned int (*v28) (unsigned char, signed short, signed int);
extern signed char v29 (unsigned short, signed int, signed short);
extern signed char (*v30) (unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed int v32 = -1;
unsigned short v31 = 6;

unsigned char v25 (signed char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 6;
unsigned short v37 = 4;
unsigned short v36 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 0;
signed int v41 = 3;
unsigned char v40 = 7;
trace++;
switch (trace)
{
case 7: 
return v39;
case 9: 
{
unsigned char v43;
signed short v44;
signed int v45;
unsigned int v46;
v43 = v40 - v39;
v44 = 3 + 2;
v45 = 3 + v41;
v46 = v27 (v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 11: 
return v40;
default: abort ();
}
}
}
}

void v17 (unsigned char v47, unsigned int v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 2;
unsigned short v50 = 4;
signed char v49 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 6;
unsigned int v54 = 5U;
signed char v53 = -2;
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
signed int v58;
signed short v59;
unsigned short v60;
unsigned short v61;
v58 = 2 + v32;
v59 = -3 + 0;
v60 = 2 - v31;
v61 = v1 (v58, v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
