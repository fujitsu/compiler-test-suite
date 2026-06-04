#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int);
extern unsigned int (*v2) (signed char, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (void);
extern signed int (*v6) (void);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned int v9 (unsigned int, signed short, signed char, signed char);
extern unsigned int (*v10) (unsigned int, signed short, signed char, signed char);
extern void v11 (signed char, unsigned short, signed int);
extern void (*v12) (signed char, unsigned short, signed int);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
signed short v17 (unsigned char);
signed short (*v18) (unsigned char) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
extern signed int v23 (signed short, signed short);
extern signed int (*v24) (signed short, signed short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern signed short v29 (unsigned char, unsigned short, unsigned char, unsigned short);
extern signed short (*v30) (unsigned char, unsigned short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
signed int v32 = 1;
signed short v31 = 3;

signed short v17 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 1;
signed short v36 = 2;
unsigned short v35 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed short v38;
v38 = v25 ();
history[history_index++] = (int)v38;
}
break;
case 4: 
{
signed short v39;
v39 = v25 ();
history[history_index++] = (int)v39;
}
break;
case 6: 
{
signed short v40;
v40 = v25 ();
history[history_index++] = (int)v40;
}
break;
case 8: 
return v36;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
signed short v43 = -4;
unsigned char v42 = 5;
signed char v41 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed short v46 = -1;
signed char v45 = -1;
unsigned char v44 = 7;
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
signed char v49;
unsigned int v50;
unsigned int v51;
v49 = -4 - -1;
v50 = 4U + 3U;
v51 = v1 (v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
