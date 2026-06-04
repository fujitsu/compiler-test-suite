#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (signed char, unsigned char, unsigned int);
extern signed int (*v4) (signed char, unsigned char, unsigned int);
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
extern signed int v7 (signed short, unsigned int);
extern signed int (*v8) (signed short, unsigned int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
void v11 (void);
void (*v12) (void) = v11;
extern signed short v13 (signed char, unsigned int, signed int, unsigned short);
extern signed short (*v14) (signed char, unsigned int, signed int, unsigned short);
extern signed short v15 (signed int, unsigned int, signed int);
extern signed short (*v16) (signed int, unsigned int, signed int);
extern signed int v17 (unsigned int, signed short);
extern signed int (*v18) (unsigned int, signed short);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed short v21 (unsigned short, signed char);
extern signed short (*v22) (unsigned short, signed char);
extern signed char v23 (signed int, signed int, signed short, unsigned short);
extern signed char (*v24) (signed int, signed int, signed short, unsigned short);
extern unsigned int v25 (unsigned int, unsigned short);
extern unsigned int (*v26) (unsigned int, unsigned short);
extern unsigned short v27 (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned short (*v28) (unsigned short, unsigned short, unsigned int, unsigned char);
signed char v29 (signed int, unsigned int, unsigned short, signed char);
signed char (*v30) (signed int, unsigned int, unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 2U;
signed short v31 = -3;

signed char v29 (signed int v34, unsigned int v35, unsigned short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 7;
unsigned int v39 = 7U;
unsigned char v38 = 4;
trace++;
switch (trace)
{
case 4: 
{
signed short v41;
unsigned int v42;
signed int v43;
v41 = -2 - 2;
v42 = 7U + 0U;
v43 = v7 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 6: 
{
signed short v44;
unsigned int v45;
signed int v46;
v44 = 2 + 1;
v45 = v35 - v39;
v46 = v7 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 9: 
{
signed short v47;
unsigned int v48;
signed int v49;
v47 = -4 + -4;
v48 = v35 + 7U;
v49 = v7 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 11: 
return v37;
case 14: 
return v37;
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
unsigned int v52 = 1U;
unsigned char v51 = 5;
unsigned short v50 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
unsigned int v55 = 3U;
signed int v54 = 3;
signed short v53 = -2;
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
v58 = v1 ();
history[history_index++] = (int)v58;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
