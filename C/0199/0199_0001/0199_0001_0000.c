#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, signed char, unsigned short);
extern signed int (*v2) (signed short, signed char, unsigned short);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
signed char v9 (signed short);
signed char (*v10) (signed short) = v9;
extern signed short v11 (signed int, unsigned short);
extern signed short (*v12) (signed int, unsigned short);
void v13 (void);
void (*v14) (void) = v13;
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed short v19 (signed char, signed char, unsigned char, signed int);
extern signed short (*v20) (signed char, signed char, unsigned char, signed int);
extern signed short v21 (signed int, unsigned char, unsigned char, unsigned char);
extern signed short (*v22) (signed int, unsigned char, unsigned char, unsigned char);
signed short v23 (signed int);
signed short (*v24) (signed int) = v23;
extern unsigned short v25 (unsigned char, signed short, signed char);
extern unsigned short (*v26) (unsigned char, signed short, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
unsigned char v29 (unsigned char, unsigned short);
unsigned char (*v30) (unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed short v32 = -3;
signed int v31 = -2;

unsigned char v29 (unsigned char v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2U;
signed short v37 = 2;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
case 5: 
return v34;
case 7: 
return v34;
default: abort ();
}
}
}
}

signed short v23 (signed int v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 7U;
signed short v41 = -1;
signed short v40 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
unsigned short v45 = 3;
unsigned char v44 = 4;
signed short v43 = 2;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed char v9 (signed short v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 7U;
signed char v48 = -3;
signed short v47 = -4;
trace++;
switch (trace)
{
case 3: 
{
signed char v50;
signed char v51;
unsigned char v52;
signed int v53;
signed short v54;
v50 = v48 + v48;
v51 = v48 + v48;
v52 = 4 - 4;
v53 = 3 + -4;
v54 = v19 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 9: 
return v48;
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
signed short v57;
signed char v58;
unsigned short v59;
signed int v60;
v57 = v32 - -4;
v58 = 3 - -2;
v59 = 4 - 7;
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
