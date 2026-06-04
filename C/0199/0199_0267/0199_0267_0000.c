#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, signed int);
extern unsigned char (*v2) (unsigned int, unsigned char, signed int);
void v3 (void);
void (*v4) (void) = v3;
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (unsigned char, signed char, unsigned int);
extern signed int (*v10) (unsigned char, signed char, unsigned int);
unsigned short v11 (signed char, unsigned short, signed int, unsigned int);
unsigned short (*v12) (signed char, unsigned short, signed int, unsigned int) = v11;
signed char v13 (unsigned short, signed char, signed char);
signed char (*v14) (unsigned short, signed char, signed char) = v13;
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern signed char v17 (signed int, unsigned int, signed char);
extern signed char (*v18) (signed int, unsigned int, signed char);
extern signed char v19 (signed char, unsigned short, unsigned short);
extern signed char (*v20) (signed char, unsigned short, unsigned short);
void v21 (signed char, signed char);
void (*v22) (signed char, signed char) = v21;
extern unsigned char v23 (signed char, signed char, unsigned short);
extern unsigned char (*v24) (signed char, signed char, unsigned short);
extern void v25 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v26) (unsigned int, unsigned char, signed short, unsigned int);
extern unsigned short v27 (unsigned int, unsigned short);
extern unsigned short (*v28) (unsigned int, unsigned short);
extern signed int v29 (unsigned int, signed char, signed short, unsigned short);
extern signed int (*v30) (unsigned int, signed char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed int v32 = -2;
signed short v31 = 1;

void v21 (signed char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -1;
signed int v37 = 3;
unsigned char v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v39, signed char v40, signed char v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -4;
unsigned int v43 = 2U;
signed short v42 = 1;
trace++;
switch (trace)
{
case 2: 
return v41;
case 4: 
return v40;
case 6: 
return 2;
case 8: 
return -4;
case 10: 
return v41;
default: abort ();
}
}
}
}

unsigned short v11 (signed char v45, unsigned short v46, signed int v47, unsigned int v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = 0;
unsigned int v50 = 6U;
unsigned char v49 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed char v54 = -3;
signed char v53 = -4;
signed int v52 = -2;
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
unsigned int v57;
unsigned char v58;
signed int v59;
unsigned char v60;
v57 = 1U + 2U;
v58 = 6 + 4;
v59 = -1 + 0;
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
