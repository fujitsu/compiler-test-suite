#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, signed char);
extern unsigned char (*v2) (unsigned short, unsigned char, signed char);
extern unsigned short v3 (signed int, signed int, signed char);
extern unsigned short (*v4) (signed int, signed int, signed char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
void v9 (unsigned int, signed int, unsigned char);
void (*v10) (unsigned int, signed int, unsigned char) = v9;
extern unsigned int v11 (signed int);
extern unsigned int (*v12) (signed int);
extern signed int v13 (unsigned char, signed char, signed short, signed int);
extern signed int (*v14) (unsigned char, signed char, signed short, signed int);
signed int v15 (unsigned short);
signed int (*v16) (unsigned short) = v15;
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned char v21 (signed int, signed int);
extern unsigned char (*v22) (signed int, signed int);
unsigned short v23 (unsigned short, unsigned int);
unsigned short (*v24) (unsigned short, unsigned int) = v23;
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned int v29 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v30) (unsigned char, unsigned int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed short v32 = 3;
signed int v31 = -3;

signed char v25 (void)
{
{
for (;;) {
signed char v36 = 1;
signed short v35 = 3;
unsigned int v34 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned short v37, unsigned int v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 2;
signed char v40 = -1;
signed char v39 = -2;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v42;
v42 = v27 ();
history[history_index++] = (int)v42;
}
break;
case 4: 
{
unsigned short v43;
v43 = v27 ();
history[history_index++] = (int)v43;
}
break;
case 6: 
{
unsigned short v44;
v44 = v27 ();
history[history_index++] = (int)v44;
}
break;
case 8: 
return 3;
case 10: 
{
unsigned short v45;
v45 = v27 ();
history[history_index++] = (int)v45;
}
break;
case 12: 
return v41;
default: abort ();
}
}
}
}

signed int v15 (unsigned short v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = 3;
unsigned short v48 = 2;
unsigned int v47 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v50, signed int v51, unsigned char v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 0U;
unsigned int v54 = 6U;
unsigned int v53 = 1U;
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
unsigned short v58;
unsigned char v59;
signed char v60;
unsigned char v61;
v58 = v33 + 7;
v59 = 7 + 4;
v60 = 2 - 0;
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
